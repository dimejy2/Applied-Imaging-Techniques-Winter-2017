function q4()
files = cat(1, jpegend(), bmpend());
files = {files.name};

for k = 1 : length(files)
    name = char(files(k));
    info = imfinfo(name);
    bitDepth = info.BitDepth;
    
    if bitDepth == 8
        reduceRange(name,7, 1);
    end 
end 
    
function reduceRange(name, start, en)
    f= imread(name);
    figure
    subplot(start - en + 1, 1, 1), imshow(f);
    
    disp('here')
    for k = start : -1 : en
        reduced = reduceImage(f, 8, k);
        subplot(start -en + 1, 1 , start-k+1), imshow(reduced);
    end 
    
    
 function reduced = reduceImage(f, base, k)
     reduced = floor(f.*(2^(k - base)));

function jend=jpegend()
  jend = dir('*.jpg');

function bend = bmpend ()
    bend = dir('*.bmp');