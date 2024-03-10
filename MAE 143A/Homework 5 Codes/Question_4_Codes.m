%Code for MAE 143A Homework 5 Question 4

%For Question 4 - Part 4a
%Double checking y(t) function
syms s
F = (-3*s+2)/((s+4)*(s+1)*(s));
DE = ilaplace (F);
