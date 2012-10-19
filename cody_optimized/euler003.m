function x= euler003(x)
	a = 2;
	while a*a<=x
		if ~rem(x,a)
			x=x/a;
		else
			a=a+1;
		end
	end
end
