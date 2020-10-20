function Output=Filter_Wiener(Input,Iteration)
%%
Layer_Red=Input(:,:,1);
Layer_Green=Input(:,:,2);
Layer_Blue=Input(:,:,3);
%%
for i=1:Iteration
Layer_Red  =wiener2(Layer_Red  );
Layer_Green=wiener2(Layer_Green);
Layer_Blue =wiener2(Layer_Blue );
end
%%
Output(:,:,1)=Layer_Red;
Output(:,:,2)=Layer_Green;
Output(:,:,3)=Layer_Blue;
end
