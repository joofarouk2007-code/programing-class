function y_zero
%Y_ZERO Sets y = 1 for the elements where x is 0.
%   Reads global x and writes the result into global y.

global x y

z = (x == 0);                     % true where x is exactly zero
y(z) = 1;
end