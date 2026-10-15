function calc_y
%CALC_Y Calculates y(x) = sin(x)/x for x~=0 and y = 1 for x==0.
%   Reads the global vector x and writes the global vector y.
%   The two parts are calculated by separate functions
%   Y_NONZERO and Y_ZERO.

global x y

y = zeros(size(x));      % prepare y, same size as x

y_nonzero                % part 1: where x is not 0
y_zero                   % part 2: where x is 0
end