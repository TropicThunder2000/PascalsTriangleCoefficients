function y = pascals_triangle(N)

y = 1;

for n = 1 : N
  nextelem = y(n) * (N-n+1)/(n);
  y = [y, nextelem];   
end


