function d = divisor(n)
%% divisor : provides a list of integer divisors of a number.
% divisor(n) : row vector of all distinct divisors of a positive integer N, 
%               including 1 and N.
%
% Remark:
%   This function uses the default factor() routine in Matlab and hence is 
% limited to input values upto 2^32. However if factor() routine does get
% updated for larger integers, this function will still work fine.
%   Using factor() provides a significant speed improvement over manually 
% seaching for the each divisor of n.
%
% Example:
%   a = divisor(12);
%   returns -> a = [1, 2, 3, 4, 6, 12];
%
% See Also:
%   factor, primes

	%% Find prime factors of number :
	pf = factor(n);         % Prime factors of n
	upf = unique(pf);       % Unique

	%% Calculate the divisors
	d = upf(1).^(0:1:nnz(pf == upf(1)))';
	for f = upf(2:end)
		d = d*(f.^(0:1:nnz(pf == f)));
		d = d(:);
	end
end