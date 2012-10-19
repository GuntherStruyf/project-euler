function ans = euler003(x)
	a = uint64(2);
	while x~=1
		if ~rem(x,a)
			double(a);
			x=x/a;
		elseif a>sqrt(double(x))
			double(x);
			break;
		else
			a=a+1;
		end
	end
end
