syms s1 s2 d1 d2
% s1, s2 come from denominator (s^2+5s+4) set equal to 0
s1 = -4;
s2 = -1;
%d1, d2 are coefficients from computing partial fraction expansion of Y(s)
d1 = ((-s1)+1)/(s1+1); %d1 = -5/3
d2 = ((-s2)+1)/(s2+4); %d2 = 2/3

% Equation 1: y(t) = d1*e^(-4t)+d2*e^(-t)

figure %generates a figure
t = 0:0.1:10;
plot(t, d1*exp(-4*t)+d2*exp(-t));
title('Plot of Inverse Laplace Transform');
hold on;