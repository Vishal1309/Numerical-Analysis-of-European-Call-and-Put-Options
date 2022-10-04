function v=vT(s)
% v0(s) finds the terminal conditions in financial variables for the
% Black Scholes Equation.


global K
v=max(s-K,0);                                                % For a call option


end
