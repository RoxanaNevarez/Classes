syms s1 s2 s3 d1 d2 d3
% s1, s2, s3 come from denominator (s^3+5s^2+4s) set equal to 0
s1 = -4;
s2 = -1;
s3 = 0;
%d1, d2, d3 are coefficients from computing partial fraction expansion of Y(s)
d1 = ((-3*s1)-2)/((s1+1)*(s1)); %d1 = 5/6
d2 = ((-3*s2)-2)/((s2+4)*(s2)); %d2 = -1/3
d3 = ((-3*s3)-2)/((s3+4)*(s3+1)); %d3 = -1/2
% Equation 1: y(t) = d1*e^(-4t)+d2*e^(-t)+d3

figure %generates a figure
t = 0:0.1:10;
plot(t, d1*exp(-4*t)+d2*exp(-t)+d3);
title('Plot of Inverse Laplace Transform');
hold on;