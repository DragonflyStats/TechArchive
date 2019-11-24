%NESTED FOR LOOP
n = 5; A = eye(n);
for j=2:n
  for i = 1:j-1
  	A(i,j) = i/j;
  	A(j,i) = i/j;
  end 
end
