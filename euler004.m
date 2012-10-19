function y = euler004(x)
%% Project Euler - Problem 4
%
% A palindromic number reads the same both ways. The largest palindrome
% made from the product of two 2-digit numbers is 9009 = 91*99.
% 
% Find the largest palindrome made from the product of two 3-digit numbers.

%% Solution

%% bruteforce 1
% v	= 1:x;
% pv = bsxfun(@times,v,v');	% cartesian product of v
% spv	= arrayfun(@num2str,pv,'uni',false); % convrted to string
% ispd= cellfun(@strcmp,spv,cellfun(@fliplr,spv,'uni',false)); % checked with mirror string
% 
% y = max(pv(ispd));

%% bruteforce 2
	y = 0;
	for ii=x:-1:1
		for jj=x:-1:ii
			t = ii*jj;
			if t<y
				break;
			elseif ispalindrome(t)
				y=t;
			end
		end
	end

end
function b = ispalindrome(a)
	b = (a ==reverse(a));
end
function a = reverse(a)
	a = str2double(fliplr(num2str(a)));
end