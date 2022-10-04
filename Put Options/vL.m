function v = vL(s,t,T)
% vL(s,t,T) computes the approx. lower boundary value at (s,t)
% for terminal time T.
global r K
v=K*exp(r*(T-t))-s;                                            % For a put option
end