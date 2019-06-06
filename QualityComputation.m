function [MoDi3D] = QualityComputation(LeftVideoName,RightVideoName)
%%
%LeftVideoName= 'LeftVideoName';RightVideoName= 'RightVideoName';
load('AlphaSet.mat');
load('BetaSet.mat');
load('PsiSet.mat');

RefSetA2=AlphaSet';RefmuA=mean(RefSetA2);RefStdA=cov(RefSetA2);
RefSetB2=BetaSet';RefmuB=mean(RefSetB2);RefStdB=cov(RefSetB2);
RefSetE2=PsiSet';RefmuE=mean(RefSetE2);RefStdE=cov(RefSetE2);

[DistAlphaSet, DistBetaSet, DistPsiSet] = MotionDepthJoint(LeftVideoName,RightVideoName);
[ProbAlpha]=ProbFeatDist(DistAlphaSet,RefmuA,RefStdA);
[ProbBeta]=ProbFeatDist(DistBetaSet,RefmuB,RefStdB);
[ProbPsi]=ProbFeatDist(DistPsiSet,RefmuE,RefStdE);

[SSIMLeftVideoScore]=SSIMDiff(LeftVideoName);
[SSIMRightVideoScore]=SSIMDiff(RightVideoName);
%%
GammaAlpha = mean(ProbAlpha(:));
GammaBeta = mean(ProbBeta(:));
GammaPsi = mean(ProbPsi(:));
Gamma = -log(GammaAlpha*GammaBeta+GammaPsi*GammaBeta+GammaAlpha*GammaPsi);
Delta = 0.5*(SSIMLeftVideoScore+SSIMRightVideoScore);
MoDi2D = log(Gamma*Delta);
[S] = SQuality(LeftVideoName,RightVideoName);
MoDi3D = MoDi2D*S;
end



