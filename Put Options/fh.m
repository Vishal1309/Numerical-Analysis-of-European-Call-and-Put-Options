function [v,s,t]=fh(u,x,tau,T)
% [v,s,t]=fh(u,x,tau,T) is converted from heat variables to financial variables. 
% v, x, s, u can be vectors of compatible sizes.
% We have presumed that r and sigma have already been defined as global variables.
global sigma r
mu=(sigma/2 - r/sigma)/sqrt(2);
nu=r+mu^2;
t=T-tau;
s=exp(sigma*x/sqrt(2));
v=exp(mu*x-nu*tau).*u;
end