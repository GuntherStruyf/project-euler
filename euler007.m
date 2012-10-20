function y = euler007(x)
%% Project Euler - Problem 7
%
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
% see that the 6th prime is 13.
%
% What is the Nth prime number?

%% Solution (implementation of project euler problem 7 explanation)

	count 	= 1; % we  know that 2 is prime
	y 		= 1;
	while true
		y = y+2;
		if isPrime(y)
			count = count+1;
			if (count==x)
				return;
			end
		end
	end
end

function isp = isPrime(n)
	if (n==1)
		isp = false;
	elseif (n<4) % 2 and 3 are prime
		isp = true;
	elseif  ~mod(n,2)
		isp = false;
	elseif n<9 % we have already excluded 4,6 and 8.
		isp = true;
	elseif ~mod(n,3)
		isp = false;
	else
		r=floor(sqrt(n)); % n rounded to the greatest integer r so that r*r<=n
		f=5;
		while f<=r
			if ~mod(n,f)
				isp = false;
				return;
			elseif ~mod(n,f+2)
				isp = false;
				return;
			end
			f=f+6;
		end
		isp = true;
	end
end