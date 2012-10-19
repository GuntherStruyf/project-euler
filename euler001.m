function y = problem001(x)
%% Project Euler - Problem 1
%
% If we list all the natural numbers below 10 that are multiples of 3 or 5,
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.

	% _below_ input number
	x=x-1;
	
	% sum of multiples of 3
	sum3 = 3*sumto(floor(x/3));
	
	% sum of multiples of 5
	% 0+5+10+15+20+... = 5*(0+1+2+3+4+...)
	sum5 = 5*sumto(floor(x/5));
	
	% overlap
	% 0 15 30 45 60 ...
	overlap = 15*sumto(floor(x/15));
	
	% total sum
	y = sum3 + sum5 - overlap;
end
function y = sumto(x)
	% sum(1:x)
	y = x*(x+1)/2;
end
