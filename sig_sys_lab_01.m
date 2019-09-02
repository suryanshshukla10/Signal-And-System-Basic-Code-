clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%
% plotting the continuous time signal 
%%%%%%%%%%%%%%%%%%%%%%%%

%%to plot unitstep function 
%define a range from -1 to 1 with equal gap of 0.01 
t = (-1: 0.01: 1);
%define a zero of name unit step matrix size t
unitstep = zeros(size(t));
%define unitstep
unitstep (t>=0) = 1; 
%drawing graph with line width = 3 and color blue
subplot(3,2,1); 
plot(t,unitstep,'b', 'linewidth',3);
title('Unit step function');
xlabel('x axis');
ylabel('y axis');

%%to plot unit impulse function 
%define unitimpulse 
f2 = zeros(size(t));
f2 (t==0) = 1;
subplot(3,2,2);
plot(t,f2, 'b', 'linewidth',2)
title('unit impulse');
xlabel('x axis');
ylabel('y axis');

%%plot ramp function 
ramp = zeros(size(t));
ramp = (t.*unitstep);
subplot(3,2,3);
plot(t,ramp,'b', 'linewidth',1);
title('ramp');
xlabel('x axis');
ylabel('y axis');

%%plot sin x
t1 = (-2*pi: 0.1: 2*pi);
a = sin(t1);
subplot(3,2,4);
plot(t1, a,'b', 'linewidth',1);
title('sin(x)');
xlabel('x axis');
ylabel('y axis');

%%plot of exponential 
expo = zeros(size(t));
expo = exp(t);
subplot(3,2,5);
plot(t,expo);
title('exponential');
xlabel('x axis');
ylabel('y axis');

%%plot of random function 
random = rand(size(t));
subplot(3,2,6);
plot(t,random)
title('random signal');
xlabel('x axis');
ylabel('y axis');




