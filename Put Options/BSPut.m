function p=BSPut(s,tau,K)
% BSPut(s,tau,K) finds the standard Black-Scholes forrmula.
% s (may be a vector) = the stock price = s, tau = expiry time
% K = exercise price. The volatility = sigma and the risk free rate = r.
% These are supplied as global variables.
global sigma r
d1=(log(s/K)+(r+sigma^2/2)*tau)/(sigma*sqrt(tau));
d2=d1-sigma*sqrt(tau);
p=(-s.*erfc(d1/sqrt(2))+K*exp(-r*tau)*erfc(d2/sqrt(2)))/2;
%Here, erfc(-x/sqrt(2))/2 is the standard normal distribution function