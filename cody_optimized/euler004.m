function ans=euler004(x)
%% Project Euler - Problem 4
%
% A palindromic number reads the same both ways. The largest palindrome
% made from the product of two 2-digit numbers is 9009 = 91*99.
% 
% Find the largest palindrome made from the product of two 3-digit numbers.

%% Solution
	0;
	for ii=x:-1:1
		for jj=x:-1:ii
			t = ii*jj;
			if t<ans
				break;
			elseif strcmp(num2str(t),fliplr(num2str(t)))
				t;
			end
		end
	end
end