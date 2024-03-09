clear, close all
Fap1=RR_tf([1 -1],[1 1]); % Define Fap1 using num and den polynomials
figure(1), RR_bode(Fap1);
figure(2), RR_step(Fap1);
%Graph labels below
title('Step Function'); hold on;
xlabel('time (t)'); hold on;
ylabel('z'); hold on;
