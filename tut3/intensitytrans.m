%%question  2 all
function out = intensitytrans(varargin)
[width, height] = size(varargin);

sz = width*height;

if (sz ==2) || (sz == 3) 
funcid = varargin{1}; 
image = varargin{2};


switch funcid
    case 'i'
       out = inver(image);
    case 'g'
        mult = varargin{3};
        out = gam(mult, image);
    case 'l'
        mult = varargin{3};
        out = logtrans(mult,image);
    otherwise
        disp('please enter a valid function id');
end
else
    disp('please use a valid number of inputs');
end
end
