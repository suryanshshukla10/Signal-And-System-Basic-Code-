clc
clear all
close all
%%%%Practical no. 04%%%%%%%%%

%defining the range of x 
%This matrix containing the number from -1 to 3 with interval of 0.01 
x = (-2:0.01:6); 

%define the y on the basis of x
%condition of y
%%%%% y only have value from 0 to 2 with x + 1
[row col] = size(x);

%Creating a zero martix y of size x
y = zeros(size(x));

%Creating the variable y from x
 for i = 1:col
     if x(1,i) >=0 & x(1,i) <= 2
         y(1,i) = x(1,i) + 1;
     else y(1,i) = 0;
     end
 end
%%Plotting the original function

 
 %Amplitude scaling
 %%Enter the input value to which amplitude scaling is to be done
 amp = input('Enter amplitude scaling value');
 %%%Now multiply the y with amplitude
 y_1 = y.*amp;
 
 %time scaling 
 %%Enter the value to be scaled with time
 time_scl = input('Enter value for time scaling');
 x_1 = x.* time_scl;
 y_2 = zeros(size(x_1));
 [row2 col2] = size(x_1);
 for j = 1:col2
     if x_1(1,j) >=0 & x_1(1,j) <=2
         y_2(1,j) = x(1,j) + 1;
     else
         y_2(1,j) = 0;
     end
 end
 
 %time shifting
 %% we shift this with t -3 
 x_2 = (-5: 0.01:3); 
 y_3 = zeros(size(x_2));
 [row3 col3] = size(x_2);
 for k = 1:col3
     if x_2(1,k) >= 0 & x_2(1,k) <= 2
         y_3(1,k) = x_2(1,k) + 1;
     else
         y_3(1,k) = 0;
     end
 end
 
 
 
 %plotting all the graphs
 %%original graph
 subplot(2,2,1)
 plot(x,y, 'b', 'linewidth',3)
 title('original graph')
 %%%amplitude scaling graph
 subplot(2,2,2)
 plot(x,y_1, 'b', 'linewidth',3)
 title('Amplitude scaling');
 %%%%time scaling graph
 subplot(2,2,3)
 plot(x,y_2,'b','linewidth', 3);
 title('time scaling')
 %%%%time shifting
 subplot(2,2,4)
 plot(x, y_3, 'b', 'linewidth', 3);
 title('time shifting by t-3');
 