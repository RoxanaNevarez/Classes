%code did not work

syms P1 P2 P3 P4 b1 b0
P1 = RR_roots([1,6,52,376]); %coefficients of equilibrium points 1 & 2
P2 = RR_roots([1,6,52,376]); %coefficients of equilibrium points 1 & 2
P3 = RR_roots([1,6,52,376]); %coefficients of equilibrium points 1 & 2
b1 = sqrt(47); %from problem 3
b0 = 4*sqrt(47); %from problem 3
d1 = ((b1*P1)+b0)/((P1-P2)*(P1-P3)*P1);
d2 = ((b1*P2)+b0)/((P2-P1)*(P2-P3)*P2);
d3 = ((b1*P3)+b0)/((P3-P1)*(P3-P2)*P3);
d4 = (-b0)/(P1*P2*P3);
t = 0:0.1:10;

figure
subplot(1,2,1)
plot(t,d1*exp(P1*t)+d2exp(P2*t)+d3exp(P3*t)+d4); hold on;

b1 = -sqrt(47); %from problem 3
b0 = -4*sqrt(47); %from problem 3
d1 = ((b1*P1)+b0)/((P1-P2)*(P1-P3)*P1);
d2 = ((b1*P2)+b0)/((P2-P1)*(P2-P3)*P2);
d3 = ((b1*P3)+b0)/((P3-P1)*(P3-P2)*P3);
d4 = (-b0)/(P1*P2*P3);
t = 0:0.1:10;

figure
subplot(1,2,2)
plot(t,d1*exp(P1*t)+d2exp(P2*t)+d3exp(P3*t)+d4); hold on;