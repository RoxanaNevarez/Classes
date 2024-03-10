%Code for MAE 143A Homework 5 Question 5

%For Question 5 - Part 5a
%D(s) = (-s-1)/(3s+2)
clear, close all;
ys=[-1 -1]; xs=[3 2]; h=pi/10; Ds=RR_tf(ys,xs); omegac=1; [Dz]=RR_C2D_tustin(Ds,h,omegac);
disp('Corresponding Matlab solution:')