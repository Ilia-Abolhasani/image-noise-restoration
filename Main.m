clc;
clear all;
close all;
%% Read Image
ImageAddress=uigetimagefile();
ImageInput=imread(ImageAddress);
%% Insert Noise to Image
NoiseRate=0.2;
ImageNoise=imnoise(ImageInput,'salt & pepper',NoiseRate);
%% 3D image Convert to 2D
ImageR=ImageNoise(:,:,1);
ImageG=ImageNoise(:,:,2);
ImageB=ImageNoise(:,:,3);
%% Apply Filter two time
% first
ImageR=medfilt2(ImageR);
ImageG=medfilt2(ImageG);
ImageB=medfilt2(ImageB);
% secound
ImageR=medfilt2(ImageR);
ImageG=medfilt2(ImageG);
ImageB=medfilt2(ImageB);
%% 2D image Convert to 3D
ImageOutput(:,:,1)=ImageR;
ImageOutput(:,:,2)=ImageG;
ImageOutput(:,:,3)=ImageB;
%% show result
imshowpair(ImageInput,ImageNoise,'montage');
title('Input image & noisy image');
figure
imshowpair(ImageNoise,ImageOutput,'montage');
title('Noisy image & output imgae');
%% Show Mean squared error for input and noisy image 
Delta=ImageInput-ImageNoise;
Delta=Delta.^2;
MSE=mean(mean(mean(Delta)));
disp(['Mean squared error for input and noisy image : ' num2str(MSE)]);
%% Show Mean squared error for noisy image and output 
Delta=ImageNoise-ImageOutput;
Delta=Delta.^2;
MSE=mean(mean(mean(Delta)));
disp(['Mean squared error for noisy image and output  : ' num2str(MSE)]);
%% Show Mean squared error for input and output image 
Delta=ImageInput-ImageOutput;
Delta=Delta.^2;
MSE=mean(mean(mean(Delta)));
disp(['Mean squared error for input and output image : ' num2str(MSE)]);