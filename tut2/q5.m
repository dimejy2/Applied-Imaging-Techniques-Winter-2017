%%for some reason this works best with the head scan image
function q5(imagename)
a= imread (imagename);
figure
subplot(3,1,1), imshow(a);
[height,width] = size(a);
out = uint8(zeros(2*height,2*width));
for k = 1 : height
    row = a(k, 1:end);
    for j = 1 : length(row)
        newj = nthodd(j);
        newk= nthodd(k);
        out(newk,newj)= a(k,j);
        out(newk, newj+1)= a(k,j);
        out(newk+1,newj)= a(k,j);
        out(newk+1, newj+1)= a(k,j);
    end

end
subplot(3,1,2),imshow(out);
resize = imresize(a, 2);
subplot(3,1,3), imshow(resize);


function nthodd = nthodd(n)
    nthodd = (2*n) - 1;
