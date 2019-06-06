% Spatial quality computation
function[SpatialScore] = SQuality(LeftVideoName,RightVideoName)
load modelparameters.mat
blocksizerow    = 96;
blocksizecol    = 96;
blockrowoverlap = 0;
blockcoloverlap = 0;

LeftFramePath  = addpath(['/MoDi3D/Codes/' numstr(LeftVideoName)]);
RightFramePath  = addpath(['/MoDi3D/Codes/' numstr(RightVideoName)]);
for i = 1:245
    LeftFrameGray  = imread([num2str(LeftRefName) '_' num2str(i) '.png']);
    RightFrameGray  = imread([num2str(RightRefName) '_' num2str(i) '.png']);
    LeftQuality = computequality(LeftFrameGray,blocksizerow,blocksizecol,blockrowoverlap,blockcoloverlap,mu_prisparam,cov_prisparam);
    RightQuality = computequality(RightFrameGray,blocksizerow,blocksizecol,blockrowoverlap,blockcoloverlap,mu_prisparam,cov_prisparam);
    
    SpatialQualityVideo(i,1) = 0.5*(LeftQuality+RightQuality);
end

SpatialScore = mean(SpatialQualityVideo(:));

end