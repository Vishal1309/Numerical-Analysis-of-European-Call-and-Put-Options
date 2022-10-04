% Script for explicit finite difference method.
% Initial values are to be provided by u0(x).
% Boundary values are to be provided by uL(xL,tau), uH(xH,tau).
%
% Before running the script, m-files for u0, uL, and uH need to
% be provided and values need to be given to the following variables:
% N = number of spatial intervals (less 1), M = number of time steps
% xL = lower boundary, xH = upper boundary, T = final time.
N = 100;
global T;
M = 1000;
global xH xL;
dx=(xH-xL)/(N+1);
dt=T/M;
alpha=dt/(dx)^2;
x=linspace(xL,xH,N+2);
u=u0(x(2:N+1));
tau=0;

% The Update Loop:
for m=1:M
    u=alpha*[u(2:N),uH(xH,tau)]+(1-2*alpha)*u+alpha*[uL(xL,tau),u(1:N-1)];
tau=m*dt;
end
%
u=[uL(xL,T),u,uH(xH,T)];