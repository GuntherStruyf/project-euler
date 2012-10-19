function ans = euler002b(x)
	0;
	f=2;
	while(f<x)
		ans+f;
		f=round(f*4.2360679774997898050514777423814); % golden ratio ^ 3
	end
end
