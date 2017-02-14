%%question 2 part iii
function out = logtrans(c, image)
try 
    image = rgb2gray(image);
catch ME
    disp(ME.identifier)
end

lgtrans = uint8(c*log10(double(1+image)));
lgtrans(lgtrans > 255) = 255;
out = lgtrans; 
end
