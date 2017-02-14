%question 5
function out = rangeincr(image, start, stop, level)

    try 
       image = rgb2gray(image); 
    catch Me
        disp(Me.identifier); 
    end

    cond = (image > start) &(image < stop);
    image(cond) = level;
    
    out = uint8(image);
end
