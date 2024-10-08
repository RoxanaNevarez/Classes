%Code for MAE 143A Homework 5 Question 2

%For Question 2 - Part 2a
%Double-checking DT approximation
clear, close all;
F2 = tf([1 0], [1 1]);
F2z = c2d(F2, 0.2, 'tustin');

%For Question 2 - Part 2b
%Double-checking differential equation
syms s
F = (s^4)+(3*s^3)+(4*s^2)+(3*s)+1; %outputs
DE = ilaplace (F);

%For Question 2 - Part 2c
%Double checking difference equation
clear, close all;
F1 = tf([1], [1 2 2 1]);
F1z = c2d(F1, 0.2, 'tustin');
F2 = tf([1 0], [1 1]);
F2z = c2d(F2, 0.2, 'tustin');
F = F1z*F2z;
%F.numerator prints coefficients to inputs u_(k-i)
%F.denominator prints coefficients to outputs y_(k-i)

%For Question 2 - Part 2d
F1=RR_tf([1],[1 2 2 1]); % Define F1 using num and den polynomials
figure(1), RR_bode(F1);
F2=RR_tf([1 0],[1 1]); % Define F2 using num and den polynomials
figure(2), RR_bode(F2);
F3 = F1 * F2; %cascading F1 with F2
figure(3), RR_bode(F3);
