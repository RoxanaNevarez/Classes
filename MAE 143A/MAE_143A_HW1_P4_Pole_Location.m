numG = [b*x_b  -b*sig*x_b];
denG = [1,  b - sig + 1 , -b*sig + b + sig*z_b - sig + (x_b)^2  , sig*(b*z_b - b - x_b  + x_b*y_b)];
%Lines 1-2 were obtained from MAE_143A_HW1_P3 Code

%For equilibrium point 1 {x_bar, y_bar, z_bar} = {sqrt(47), sqrt(47), -1}
%subs(denG, {b,sig,x_b,y_b,z_b}, {1,4,sqrt(47),sqrt(47),-1});
%roots = [1, 6, 52, 376]

%For equilibrium point 2 {x_bar, y_bar, z_bar} = {-sqrt(47), -sqrt(47), -1}
%subs(denG, {b,sig,x_b,y_b,z_b}, {1,4,-sqrt(47),-sqrt(47),-1});
%roots = [1, 6, 52, 376]

%For equilibrium point 3 {x_bar, y_bar, z_bar} = {0, 0, -48}
%subs(denG, {b,sig,x_b,y_b,z_b}, {1,4,0,0,-48});
%roots = [1, 6, -183, -188]

%General Procedures to Solve Problem 4 after finding roots using
%RR_roots(denG)
%1. Run MAE_143A_HW1_P3
%2. run subs command for equilibrium point
%3. define output as denG
%4. Run RR_roots(denG) to get three roots for that equilibrium point
%5. Repeat process for two other equilibrium points