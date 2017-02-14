
%%question 1 
%%this function reduces all the intensities in the image below t to 0,
%%otherwise sets them equal to 255
function out = intthreshold(image, t)
    out = (image > t )*255;
end
