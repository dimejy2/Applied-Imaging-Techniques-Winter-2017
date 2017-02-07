function q7(imagename)
f= imread(imagename);
subplot(2,1,1),imshow(f);
double= f.*2;
double(double> 255) = 255;
subplot(2,1,2), imshow(double);
