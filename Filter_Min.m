function Output=Filter_Min(Input,Iteration)
%%
Layer_Red=Input(:,:,1);
Layer_Green=Input(:,:,2);
Layer_Blue=Input(:,:,3);
%%
for i=1:Iteration    
Layer_Red  =ordfilt2(Layer_Red,1,ones(3,3));
Layer_Green=ordfilt2(Layer_Green,1,ones(3,3));
Layer_Blue =ordfilt2(Layer_Blue,1,ones(3,3));
end
%%
Output(:,:,1)=Layer_Red;
Output(:,:,2)=Layer_Green;
Output(:,:,3)=Layer_Blue;
end
