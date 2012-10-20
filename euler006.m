function y = euler006(x)
%% Project Euler - Problem 6
%
% The sum of the squares of the first ten natural numbers is,
%			1^2 + 2^2 + ... + 10^2 = 385
% The square of the sum of the first ten natural numbers is,
%			(1 + 2 + ... + 10)^2 = 55^2 = 3025
% Hence the difference between the sum of the squares of the first ten
% natural numbers and the square of the sum is 3025 - 385 = 2640.
% 
% Find the difference between the sum of the squares of the first one
% hundred natural numbers and the square of the sum.

%% Solution
% sum(a^2,a=1..x) = (x+1)^3/3 - (x+1)^2/2 + x/6 + 1/6
%                 = x^3/3+x^2/2+x/6
%
% sum(a,a=1..x)^2 = (x*(x+1)/2)^2
%                 = x^2*(x+1)^2/4
%
% diff = (x^2*(x+1)^2/4) - (x^3/3+x^2/2+x/6)
%      = x^3/6-x^2/4-x/6+x^4/4

	y = x^3/6-x^2/4-x/6+x^4/4;
end