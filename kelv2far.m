function F = kelv2far(K)
%KELV2FAR Converts temperature from Kelvin to Fahrenheit.
%   F = KELV2FAR(K) returns the temperature F in degrees Fahrenheit
%   for the temperature K given in degrees Kelvin.
%
%   Input:  K - temperature in Kelvin (a number, vector or matrix)
%   Output: F - temperature in Fahrenheit (same size as K)
%
%   Formula: F = K*9/5 - 459.67
%
%   Example:
%       F = kelv2far(300)    % gives F = 80.3300

F = K*9/5 - 459.67;
end