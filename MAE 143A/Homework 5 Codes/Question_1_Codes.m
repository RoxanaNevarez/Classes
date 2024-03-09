%Code for MAE 143A Homework 5 Question 1

%For Question 1 - Part 1a
syms s
F = (s^3)+(2*s^2)+(2*s)+1;
DE = ilaplace (F);
%Output: y'''(t) + 2y''(t) + 2y'(t) + y(t) = u(t)

%For Question 1 - Part 1b
%Y(s) = F1(s) * U(s) assuming U(s) = 1/s
%Y(s) = 1/(s^4 + 2s^3 + 2s^2 + s)
clear, close all;
F1 = RR_tf([1], [1 2 2 1]); %F1 = 1/((s^3)+(2*s^2)+(2*s)+1)
figure(1), RR_step(F1);
hold on;
title('Step Response Of F_1(s)'); hold on;
xlabel('time (t)'); hold on;
ylabel('y(t)'); hold on;

%For Question 1 - Part 1d
%F1 = 1/((s^3)+(2*s^2)+(2*s)+1)
clear, close all;
syms s
F1 = tf([1], [1 2 2 1]);
F1z = c2d(F1, 0.2, 'tustin');
%polynomials in denominator
p1 = (10*(z-1))^3;
p2 = 2*(10*(z-1))^2*(z+1);
p3 = 2*(10*(z-1))*(z+1)^2;
p4 = (z+1)^3;
%Expanding the polynomials
ep1 = expand(p1);
ep2 = expand(p2);
ep3 = expand(p3);
ep4 = expand(p4);
result_poly = ep1 + ep2 + ep3 + ep4;
%Displaying simplified denominator of DT transfer function
disp('Simplified Denominator after Adding Polynomials:');
disp(['Result: ', char(result_poly)]);

%For Question 1 - Part 1e
p1 = (7.77*(z-1))^3;
p2 = 2*(7.77*(z-1))^2*(z+1);
p3 = 2*(7.77*(z-1))*(z+1)^2;
p4 = (z+1)^3;
%Expanding the polynomials
ep1 = expand(p1);
ep2 = expand(p2);
ep3 = expand(p3);
ep4 = expand(p4);
result_poly = ep1 + ep2 + ep3 + ep4;
%Displaying simplified denominator of DT transfer function
disp('Simplified Denominator after Adding Polynomials:');
disp(['Result: ', char(result_poly)]);
%Using Tustin's approximation with prewarping
clear, close all;
ys=[1]; xs=[1 2 2 1]; h=0.2; Ds=RR_tf(ys,xs); omegac=8; [Dz]=RR_C2D_tustin(Ds,h,omegac);
disp('Corresponding Matlab solution:')

%For Question 1 - Part 1f
b = RR_poly([1221 -3177 2783 -819]); % polynomial in denominator
p = RR_roots(b); %Gives poles of b