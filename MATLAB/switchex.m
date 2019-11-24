%EVALUATE 1, 2 \& INFINITY NORM

x=x(:);  % Make sure x is a column vector
switch p 
  case 1, y = sum(abs(x)); 
  case 2, y = sqrt(x'*x); 
  case inf, y  = max(abs(x)); 
  otherwise error('p must be 1, 2 or inf.')  
end