function [SSIMSet]=SSIMDiff(VideoName)
VideoRead=VideoReader(VideoName);
VideoFrSet=read(VideoRead);
for i1=1:size(VideoFrSet,4)-1
    Fr1=double(rgb2gray(VideoFrSet(:,:,:,i1)));
    Fr2=double(rgb2gray(VideoFrSet(:,:,:,i1+1)));
    SSIMSet(1,i1)=ssim(Fr1,Fr2);
end
end