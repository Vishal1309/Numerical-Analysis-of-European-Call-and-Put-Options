function v = vH(s,t,T)
% vL(s,t,T) computes the approx. upper boundary value at (s,t)
% for terminal time T.

global r K
v = s - K*exp(-r*(T-t));                    %for a call
end