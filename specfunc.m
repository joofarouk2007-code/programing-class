function result = specfunc(varargin)
%SPECFUNC Squares one input, or combines two inputs.
%   R = SPECFUNC(A) returns A squared.
%   R = SPECFUNC(A, B) returns A squared plus B cubed (A^2 + B^3).
%
%   Input:  one or two variables (numbers, vectors or matrices)
%   Output: one variable
%   If two inputs are vectors or matrices, they must have the same size.
%
%   Examples:
%       specfunc(3)        % gives 9
%       specfunc(2, 3)     % gives 4 + 27 = 31

if nargin == 1
    result = varargin{1}.^2;
elseif nargin == 2
    result = varargin{1}.^2 + varargin{2}.^3;
else
    error('specfunc accepts only one or two inputs.');
end
end