----------------------------------------------------
## Stereoscopic Video Quality Dataset (LFOVIAS3DPh2)
----------------------------------------------------


License and Copyright:

Permission is hereby granted, without written agreement and without license or royalty fees, to use, copy, modify, and distribute this dataset (the videos, the results and the source files). The dataset and the pristine sources are available at Lab for Video and Image Analysis (LFOVIA, https://www.iith.ac.in/~lfovia/downloads.html) at Indian Institute of Technology Hyderabad, Laboratory for Image and Video Engineering (LIVE, http://live.ece.utexas.edu) at Univeristy of Texas at Austin, and rmit3dv (http://www.rmit3dv.com) at RMIT University at Australia, is reports to use in research purpose. 

The following papers are to be cited in the bibliography whenever the database is used as:

- B. Appina, S. V. R. Dendi, K. Manasa, S. S. Channappayya, A. C. Bovik, “Study of Subjective Quality and Objective Blind Quality Prediction of Stereoscopic Videos,” accepted to IEEE Transactions on Image Processing.

- E. Cheng, P. Burton, J. Burton, A. Joseski, and I. Burnett, “Rmit3dv: Pre-announcement of a creative commons uncompressed HD 3D video database,” in Fourth International Workshop on Quality of Multimedia Experience, pp. 212–217, July 2012.


## MoDi3D:   Motion  and  Disparity  based  3D video quality evaluator
If you are using MoDi_3D code, please cite this paper.

### Citation
    @ARTICLE{8712568,
    author={B. {Appina} and S. V. R. {Dendi} and K. {Manasa} and S. S. {Channappayya} and A. C. {Bovik}},
    journal={IEEE Transactions on Image Processing},
    title={Study of Subjective Quality and Objective Blind Quality Prediction of Stereoscopic Videos},
    year={2019},
    volume={},
    number={},
    pages={1-1},
    doi={10.1109/TIP.2019.2914950},
    ISSN={1057-7149},
    month={},}

Dependencies can be found in ./Toolbox
1) Download DeMo3D code from http://www.iith.ac.in/~lfovia or http://live.ece.utexas.edu/
	
2) Download the Steerable pyramid toolbox from http://www.cns.nyu.edu/pub/eero/matlabPyrTools.tar.gz and unzip in toolbox folder.

3) Disparity map can be estimated using the code available at http://live.ece.utexas.edu/research/quality/MJ3DFR_release.zip  and place in toolbox folder.

4) Download StereoQue code from http://www.iith.ac.in/~lfovia and place in Toolbox folder.

5) Run MoDi3DScore.m to estimate quality.
