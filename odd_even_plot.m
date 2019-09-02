clc 
clear all
close all

%%%%%%%%%%%%%%%%%
%Practical no. 
%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Topic: Odd and Even signal plotting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Take a signal y = x + 2
%%Plot its odd and oven parts

%Original signal 
%%y = x + 2 which is defined from 0 to 3
x = (-2:0.01:5);
y = zeros(size(x));
[row, col] = size(x);
for i = 1:col
    if x(1,i) >= 0 & x(1,i) <= 4
        y(1,i) = x(1,i);
    else
        y(1,i) = 0;
    end 
end

%Finding x(-t) from y = x(t)
x_1 = (-5:0.01:2);
[row1 col1] = size(x_1);
y_1 = zeros(size(x_1));
for j = 1:col1
    if x_1(1,j) <= 0 & x(1,j) >= -4
        y_1(1,j) = -x_1(1,j);
    else
        y_1(1,j) = 0;
    end 
end


%Finding the even signal 
x_2 = (-5:0.01:5);
y_2 = zeros(size(x_2));
[row2 col2] = size(x_2);
count = 1;
for k= 1:col2
    if x_2(1,k) < 0 & x_2(1,k) >= -5
        y_2(1,k) = y_1(1,k);
    else
        y_2(1,k) = y(1,count);
        count = count + 1;
    end
        
end

%Second Signal is Exponential signal 


%Plotting the signals 
%%original signal
% subplot(2,3,1)
plot(x_2,y_2, 'b', 'linewidth', 3);
title('Original signal')