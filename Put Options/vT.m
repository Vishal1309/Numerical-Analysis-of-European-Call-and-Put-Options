function v=vT(s)
% v0(s) finds the terminal conditions in financial variables for the
% Black Scholes Equation.


global K
v=max(K-s,0);                                                % For a put option


end
