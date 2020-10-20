clc;
clear ;
close all;
%%
%Main_Image=imread(uigetimagefile());
Main_Image=imread('.\Boy Image.jpg');
%% Restoration
Restoration(Main_Image,'PeriodicNoise');
pause;
Restoration(Main_Image,'speckle');
pause;
Restoration(Main_Image,'salt & pepper');
pause;
Restoration(Main_Image,'gaussian');
pause;
Restoration(Main_Image,'localvar');
pause;
Restoration(Main_Image,'poisson');
