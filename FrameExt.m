% Extracts video frame and create new directory for each video.
function [] = FrameExt(VideoName)
mkdir VideoName
FramePath = ['/MoDi3D/Codes/' numstr(VideoName)]
for i = 1:LeftRef.Duration*LeftRef.FrameRate
    LeftRefFrameSet = read(LeftRef,i);
    FrameWrite = rgb2gray(LeftRefFrameSet);
    imwrite(FrameWrite,[FramePath, '/' num2str(VideoName) '_' num2str(i) '.png']);
end
end

