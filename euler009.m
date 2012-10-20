function y = euler009(x)
%% Project Euler - Problem 9
% A Pythagorean triplet is a set of three natural numbers, a < b < c, for
% which    a^2 + b^2 = c^2
% For example, 3^2 + 4^2 = 9 + 16 = 2^5 = 52.
% 
% There exists exactly one Pythagorean triplet for which a + b + c = x.
% Find the product a*b*c.

%% Solution
% To create a unique pythagorean triplet (m>n) :
% a = 2*m*n;
% b = m^2-n^2;
% c = m^2+n^2;
% divide by gcd (k), to get primitive pythagorean triplet:
% (a+b+c)*d = (2*m*n+2*m^2)*d = 2*m(m+n)*d = (2*m)*(m+n)*d = 2*m*k*d
%
% find divisor of x/2 		= m
% find odd divisor of x/2/m = k
% k = m+n & n<m --> m<k<2*m
% --> n = k-m & d=s/(2*m*k)
% --> a,b,c = ... --> a*b*c

	x=x/2;
	for m = 2:ceil(sqrt(x)-1)
		if ~mod(x,m) % if m is divisor of x
			xm = x/m;
			% we now look for an odd divisor --> 
			while ~mod(xm,2)
				xm = xm/2; % remove all factors 2
			end
			k = m+1+mod(m,2);
			while(k<2*m && k<=xm)
				if ~mod(xm,k) && gcd(k,m)==1
					d = x/k/m;
					n = k-m;
					y = d*(m^2-n^2) * 2*d*m*n * d*(m^2+n^2);
				end
				k=k+2;
			end
		end
	end

%% brute force
% for a=1:x
% 	for b=a:x
% 		c = x-a-b;
% 		if c^2==a^2+b^2
% 			y=a*b*c;
% 			return;
% 		end
% 	end
% end

end