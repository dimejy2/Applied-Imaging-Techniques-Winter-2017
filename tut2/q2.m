f = [80 81 81 50 50; 80 80 82 49 48; 120 122 121 120 118; 78 80 80 24 27; 80 82 221 220 232];
base=8;
for k= 3:2:5
    floor(f.*(2^(k - base)))
end