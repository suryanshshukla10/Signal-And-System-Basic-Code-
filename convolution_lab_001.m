clc 
close all
clear all
close all 


%%%%practical no. 

%%%%%%%%%%Topic%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Finding the convolution of given signal%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%defining the singal x1 = 1 ; 1 < t < 10
t = (-1:0.01:15);
x1 = zeros(size(t));
[row col] =size(t);
for i = 1:col
    if t(1,i)>1 & t(1,i) <10
        x1(1,i) = 1;
    else
        x1(1,i) = 0;
    end
end     

%defining the signal x2 = 1; 2<t<10
x2 = zeros(size(t));
for j = 1:col
    if t(1,j) > 2 & t(1,j) < 10
        x2(1,j) = 1;
    else
        x2(1,j) = 0;
    end
end
   
%finding the convolution of signal 
conv_sig = conv(x1,x2);

%plotting the graphs
%%original sinal 
subplot(1,3,1)
plot(t,x1, 'b', 'linewidth' ,3)
title('signal x1 = 1 for 1<t<10')
subplot(1,3,2)
plot(t,x2, 'b', 'linewidth' ,3)
title('signal x2 = 1  for 2<t<10')
%convolution graph 
subplot(1,3,3)
plot(conv_sig,'b','linewidth',3)
title('convoluttion of x1 and x2')


