function MSE =Compare_MSE(Image1,Image2)
Delta=abs(im2double(Image1)-im2double(Image2));
Delta=Delta.^2;
MSE=mean(mean(mean(Delta)));
end
