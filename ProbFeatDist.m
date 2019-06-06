function [DistAlpha]=ProbFeatDist(NewAlphaDist,RefmuA,RefStdA)
NewAlphaDist=NewAlphaDist';
scaleA=((2*pi)^(length(RefmuA)/2))*sqrt(abs(det(RefStdA)));
DistAlpha= scaleA*mvnpdf(NewAlphaDist,RefmuA, RefStdA);