%Code was modified 1/28/24

syms p1 p2 p3 P4 b1 b0
a = roots([1,6,52,376]); %same for equilibrium 1 & 2 points (determined in Problem 4 Pole Location)
p1 = a(1); %takes first output of roots([1,6,52,376])
p2 = a(2); %takes second output of roots([1,6,52,376])
p3 = a(3); %takes third output of roots([1,6,52,376])

%For y(t) using equilibrium point 1
b1 = sqrt(47); %from problem 3
b0 = 4*sqrt(47); %from problem 3
d1 = ((b1*p1)+b0)/((p1-p2)*(p1-p3)*p1);
d2 = ((b1*p2)+b0)/((p2-p1)*(p2-p3)*p2);
d3 = ((b1*p3)+b0)/((p3-p1)*(p3-p2)*p3);
d4 = (-b0)/(p1*p2*p3);
% Equation 1: y(t) = d1*e^(P1t)+d2*e^(P2t)+d3*e^(P3t)+d4*e^(P4t)

figure %generates a figure

t = 0:0.1:10;
plot(t,d1*exp(p1*t)+d2*exp(p2*t)+d3*exp(p3*t)+d4); %plots equation 1
hold on;

%For y(t) using equilibrium point 2
b1 = -sqrt(47); %from problem 3
b0 = -4*sqrt(47); %from problem 3
d1 = ((b1*p1)+b0)/((p1-p2)*(p1-p3)*p1);
d2 = ((b1*p2)+b0)/((p2-p1)*(p2-p3)*p2);
d3 = ((b1*p3)+b0)/((p3-p1)*(p3-p2)*p3);
d4 = (-b0)/(p1*p2*p3);
% Equation 2: y(t) = d1*e^(P1t)+d2*e^(P2t)+d3*e^(P3t)+d4*e^(P4t)

t = 0:0.1:10;
plot(t,d1*exp(p1*t)+d2*exp(p2*t)+d3*exp(p3*t)+d4); %plots equation 2
hold on;

legend('y(t) for equilibrium point 1','y(t) for equilibrium point 2'); 


