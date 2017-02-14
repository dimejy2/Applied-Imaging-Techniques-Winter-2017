%%question 2 part ii
function out = gam(g , image)
try 
    image = rgb2gray(image);
catch ME
    disp(ME.identifier)
end

image = double(image);
gammatrans = uint8(image.^g);
gammatrans(gammatrans > 255) = 255;
out = gammatrans; 

end
