function y = euler005(x)
%% Project Euler - Problem 5
%
% 2520 is the smallest number that can be divided by each of the numbers
% from 1 to 10 without any remainder.
%
% What is the smallest positive number that is evenly divisible by all of
% the numbers from 1 to 20?

%% Solution
	v = 2:x;
	for ii=1:x-2
		divs = [false(1,ii) ~rem(v(ii+1:end),v(ii))];
		v(divs) = v(divs)/v(ii);
	end
	y = prod(v);


end