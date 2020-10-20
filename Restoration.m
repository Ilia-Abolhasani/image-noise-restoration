function [] = Restoration(Main_Image,NoiseType)
%% apply noise
if(strcmp(NoiseType,'localvar'))
    ImageNoise=imnoise(Main_Image,NoiseType,0.05*rand(size(Main_Image)));
elseif(strcmp(NoiseType,'PeriodicNoise'))
    ImageNoise=PeriodicNoise(Main_Image);
else
    ImageNoise=imnoise(Main_Image,NoiseType);
end
%% restore image
Restored_Average=Filter_Average(ImageNoise,1);
Restored_Gaussian=Filter_Gaussian(ImageNoise,1);
Restored_Meddian=Filter_Meddian(ImageNoise,1);
Restored_Wiener=Filter_Wiener(ImageNoise,1);
Restored_Max=Filter_Max(ImageNoise,1);
Restored_Min=Filter_Min(ImageNoise,1);
%% Show
fig=gcf;
fig.Name=NoiseType;

subplot(4,2,1);
imshow(Main_Image);
title('Main');

subplot(4,2,2);
imshow(ImageNoise);
title('Noise');

subplot(4,2,3);
imshow(Restored_Average);
title('Average');

subplot(4,2,4);
imshow(Restored_Gaussian);
title('Gaussian');

subplot(4,2,5);
imshow(Restored_Meddian);
title('Meddian');

subplot(4,2,6);
imshow(Restored_Wiener);
title('Wiener');

subplot(4,2,7);
imshow(Restored_Max);
title('Max');

subplot(4,2,8);
imshow(Restored_Min);
title('Min');

% title(NoiseType);
%% Compare
clc;
disp(['MSE(Main Image & ImageNoise       ) : ' , num2str(Compare_MSE(Main_Image,ImageNoise))]);
disp(['MSE(ImageNoise & Restored_Average ) : ' , num2str(Compare_MSE(Main_Image,Restored_Average))]);
disp(['MSE(Main Image & Restored_Gaussian) : ' , num2str(Compare_MSE(Main_Image,Restored_Gaussian))]);
disp(['MSE(Main Image & Restored_Meddian ) : ' , num2str(Compare_MSE(Main_Image,Restored_Meddian))]);
disp(['MSE(Main Image & Restored_Wiener  ) : ' , num2str(Compare_MSE(Main_Image,Restored_Wiener))]);
disp(['MSE(Main Image & Restored_Min ) : ' , num2str(Compare_MSE(Main_Image,Restored_Min))]);
disp(['MSE(Main Image & Restored_Max  ) : ' , num2str(Compare_MSE(Main_Image,Restored_Max))]);
end
