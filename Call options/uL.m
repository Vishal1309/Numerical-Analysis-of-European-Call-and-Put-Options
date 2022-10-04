function u=uL(x,tau)
% For finite difference calculations in heat variables, uL(x,tau) gives the
% lower boundary values. The values are obtained by simply evaluating vL in
% financial variables and converting them to heat variables.


global T;
[trash,s]=fh(0,x,tau,T);
v=vL(s,0,tau);
u=hf(v,s,0,tau);


end