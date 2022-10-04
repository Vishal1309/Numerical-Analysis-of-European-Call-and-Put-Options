function c=BSCall(s,tau,K)
% BSCall(s,tau,K) helps in evaluating the standard Black-Scholes Formula.
% s (may be a vector) is the stock price = s, tau = time till expiry
% exercise price = K. The volatility = sigma
% and the risk free rate = r. These are supplied as global variables.
global sigma r
d1=(log(s/K)+(r+sigma^2/2)*tau)/(sigma*sqrt(tau));
d2=d1-sigma*sqrt(tau);
c=(s.*erfc(-d1/sqrt(2))-K*exp(-r*tau)*erfc(-d2/sqrt(2)))/2;
% Here, erfc(-x/sqrt(2))/2 is the standard normal distribution function.