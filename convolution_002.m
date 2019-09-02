clc 
close all
clear all

t = linspace (-1:0.01: 4);
unitstep = zeros(size(t));
unitstep (t>=0) = 1;


% a = exp(-t) * unitstep
a = exp(-t) .* unitstep;
% plot(exp(-t));
plot(a)

