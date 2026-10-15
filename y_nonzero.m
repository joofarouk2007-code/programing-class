function y_nonzero
%Y_NONZERO Calculates y = sin(x)/x for the elements where x is not 0.
%   Reads global x and writes the result into global y.

global x y

nz = (x ~= 0);                    % true where x is NOT zero
y(nz) = sin(x(nz)) ./ x(nz);      % element-wise division
end