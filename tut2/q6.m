function q6(imagename)
a=[10,70,150,-10,-70,-150]
f= imread(imagename);
subplot(length(a) + 1,1,1), imshow(f);
for k =1 : length(a)
    sum = f+a(k);
    sum(sum>255)=255;
    subplot(length(a) + 1,1,k+1), imshow(sum);
end
