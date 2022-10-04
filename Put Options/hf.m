function [u,x,tau]=hf(v,s,t,T)
global sigma r;
mu=(sigma/2 - r/sigma)/sqrt(2);
nu=r+mu^2;
tau=T-t;
x = sqrt(2)*log(s)/sigma;
u = v./exp(mu*x-nu*tau);
end