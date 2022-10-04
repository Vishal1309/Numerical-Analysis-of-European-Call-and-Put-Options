function u=uH(x,tau)
% For finite difference calculations in heat variables, uH(x,tau) gives the
% upper boundary values. The values are obtained by simply finding vH in
% financial variables and converting them to heat variables.


[trash,s]=fh(0,x,tau,tau);
v=vH(s,0,tau);
u=hf(v,s,0,tau);


% global sigma r;
% lambda = (2*r/sigma^2 - 1)/2;
% v = (2*r/sigma^2 + 1)/2;
% u=exp((lambda+1)*x+v^2*tau)-exp(lambda*x+lambda^2*tau);
end