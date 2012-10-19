function ans = euler001(x)
  floor((x-1)./[3 5 15]);
  (ans+1).*ans/2*[3 ;5 ;-15];
end