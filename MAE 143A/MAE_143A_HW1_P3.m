%% Lines 4-28 were modified from RR_Ex06_02_cascade_mass_spring code %%
%% (Corresponding Author: Thomas Bewley) to solve homework problem   %%

clear;
syms L1 L2 L3 L4 L5 L6 L7 L8 L9 x y z u
%x = x'; y = y'; z = z'; u = u'
eqn1= L1*x+L2*y==0; % (d/dt - sigma)*x' + (-sigma)*y' = 0
eqn2= L3*x+L4*y+L5*z==0; % (z_bar)*x' + (d/dt + 1)*y' + (x_bar)*z' = 0
eqn3= L6*x+L7*y+L8*z==L9*u;% (-y_bar)*x' + (-x_bar)*y' + (d/dt + b)*z' = (-b)*u'
sol=solve(eqn1,eqn2,eqn3,x,y,z); G=sol.y/u
pause;

%d/dt = s (in preparation for Laplace Transform)
%sigma = sig
%z_bar = z_b
%x_bar = x_b
%y_bar = y_b
%b = b
syms s sig z_b x_b y_b b
G=subs(sol.y/u,{L1,L2,L3,L4,L5,L6,L7,L8,L9},{s - sig, - sig, z_b, s + 1, x_b, - y_b, - x_b, s + b, - b})
[numG,denG] = numden(G);      % this extracts out the num and den of G
numG=coeffs(numG,s);          % this extracts the powers of s in the num and den
denG=coeffs(denG,s);
numG=simplify(numG/denG(end)); % this makes the den monic
denG=simplify(denG/denG(end));

numG=numG(end:-1:1)   % this reverses the order of the vector of coefficients.
denG=denG(end:-1:1)

%%Code was executed using Octave (same syntax as MATLAB)%%

%-----------------------------------------------------
%
%Answer for system of equations: G = (sym):
%
%                  -L1*L5*L9
%  -----------------------------------------
%  L1*L4*L8 - L1*L5*L7 - L2*L3*L8 + L2*L5*L6
%
%-----------------------------------------------------

%Answer for linear single ODE: G = (sym):
%
%                               b*x_b*(s - sig)
%  --------------------------------------------------------------------------
%                                     2
%  sig*x_b*y_b + sig*z_b*(b + s) + x_b *(s - sig) + (b + s)*(s + 1)*(s - sig)
%
%Input coefficients (descending order) -> numG = (sym): [b*x_b  -b*sig*x_b]  (1x2 matrix)
%Output coefficients (descending order) -> denG = (sym 1x4 matrix):
%  [                                                  2       /               2          \]
%  [1,  b - sig + 1 , -b*sig + b + sig*z_b - sig + x_b  , sig*\b*z_b - b - x_b  + x_b*y_b/]
%a3=1
%a2 = b - sig + 1
%a1 = -b*sig + b + sig*z_b - sig + x_b^2
%a0 = sig*(b*z_b - b - x_b^2 + x_b*y_b)
%b1 = b*x_b
%b0 = -b*sig*x_b

%Final ODE:
%a3[(d^3)(y')/dt^3] + a2[(d^2)(y')/dt^2] + a1[d(y')/dt] + a0[y'] = b1[u'] + b0
