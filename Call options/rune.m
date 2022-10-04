% Code to test calculations by using efd to compute call values.
% Providing boundary and initial conditions by u0(*), uL(*) and uh(*).
% xL and xH are converted from Stock_lower and Stock_higher.
clear all;
Stock_lower=2;
Stock_higher=25;
global K;
K = 10;
global sigma;
sigma = 0.2;
global r;
r = 0.05;
global T;
T = 2;  % in years
[trash,x]=hf(0,[Stock_lower,Stock_higher],0,0); % Converting [Stock_lower,Stock_higher] to xL, xH.
% Running the explicit method
global xL;
xL = x(1);
global xH;
xH = x(2);
efd
% convert to heat variables and BSCall after computing true values: 
[trash,s]=fh(0,x,0,0);
true=hf(BSCall(s,T,K),s,0,T);
% Displaying the results------->
plot(x,true,'r')
title('Explict Finite Difference Results (in heat variables) Analytical Solution')
xlabel('x - distance')
ylabel('u')
dim = [0.2 0.5 0.3 0.3];
str = {'K=10','sigma=0.2','r=0.05','T=2','Stock lower = 2', 'Stock higher = 25'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');
figure
plot(x,u,'*')
title('Explict Finite Difference Results (in heat variables) Numerical Solution')
xlabel('x - distance')
ylabel('u')
dim = [0.2 0.5 0.3 0.3];
str = {'K=10','sigma=0.2','r=0.05','T=2', 'Stock lower = 2', 'Stock higher = 25'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

% Printing the summary------------>

fprintf('\n[xL,xH]=[%g , %g]\n',xL,xH)
fprintf('dx=%g, using N+1=%g x-intervals.\n',dx,N+1)
fprintf('T=%g, dt=%g, using M=%g time steps.\n',T,dt,M)
fprintf('alpha=%g\n',alpha)
fprintf('Minimal M for stability=%g\n',ceil(2*T/(dx^2)))
fprintf('Maximum error=%g\n\r',max(abs(u-true)))
