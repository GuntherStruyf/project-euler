function ans = euler005(x)
%% Project Euler - Problem 5
%
% 2520 is the smallest number that can be divided by each of the numbers
% from 1 to 10 without any remainder.
%
% What is the smallest positive number that is evenly divisible by all of
% the numbers from 1 to 20?

%% Solution
	2:x;
	for ii=1:x-2
		divs = find(~rem(ans(ii+1:end),ans(ii)))+ii;
		ans(divs)=ans(divs)/ans(ii);
	end
	prod(ans);
end