%double checking math
syms M K C m k c s L1 L2 L3 L4 L5 L6 

L1 = M*s^2 + C*s + K;
L2 = C*s + K;
L3 = m*s^2 + c*s + k;
L4 = c*s + k;
L5 = c*s + k;
L6 = L5*L4 + L3*L5 + L3*L1;
L6_ans = expand(L6);
L7 = L3*L2;
L7_ans = expand(L7);