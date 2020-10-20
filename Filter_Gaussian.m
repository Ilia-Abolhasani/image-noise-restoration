function Input=Filter_Gaussian(Input,Iteration)
for i=1:Iteration
Input= imfilter(Input,fspecial('gaussian',[5 5],2));
end
end
