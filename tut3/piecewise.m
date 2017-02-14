%question 3
function output = piecewise(r1, r2, s1, s2, L)
input = 0 : L-1;

%calculate the slope(a) and the intercept(b) for the first line
[fslope, fint] = linegen(0, 0, r1, s1);

%calculate the slope(a) and the intercept(b) for the second line
[sslope, sint] = linegen(r1, s1, r2, s2);
%calculate the slope(a) and the intercept(b) for the third line
[tslope, tint] = linegen(r2, s2, L-1, L -1);

%apply the first function
o1 = appline(input, fslope, fint);
%apply the mask
o1 = o1.*(input < r1);
%function
o2 = appline(input, sslope, sint);
%mask
o2 = o2.*(input >=r1).*(input < r2);
%function
o3 = appline(input, tslope, tint);
%mask
o3 = o3.*(input>= r2).*(input < L);
%return output by finding the sum
output = o1+o2+o3;


%this function caclulates the slope(a) and the intercept(b)
%of a line of form y = ax+b given two points on the line
function [a, b] = linegen(x1, y1, x2, y2)
a = (y2 - y1) / (x2 - x1);
b = (y1*x2 - y2*x1)/ (x2 -x1);

%this function finds the y values for a line y=ax+b  given the slope(a), the intercept(b)
%and an array of inputs(x)
function out = appline(input, slope, intercept)
out = input*slope + intercept;
