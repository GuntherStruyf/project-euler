function y = euler003(x)
%% Project Euler - Problem 3
%
% The prime factors of 13195 are 5, 7, 13 and 29.
%
% What is the largest prime factor of the number 600851475143 ?

%% Solution
% f = factor(x); 
% y = max(f(isprime(f)));
% fails because 'The maximum value of n allowed is 2^32.' both on factor as
% on isprime :(

	x=uint64(x);
	y = 1;
	a = uint64(2);
	while x~=1
		if ~rem(x,a)
			y = double(a);
			x=x/y;
		elseif a>sqrt(double(x))
			y = double(x);
			break;
		else
			a=a+1;
		end
	end

end
