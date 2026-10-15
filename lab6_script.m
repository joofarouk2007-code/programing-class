%% Task 1: show help and test the function kelv2far
help kelv2far

K = 300;                 % temperature in Kelvin
F = kelv2far(K);         % use the function, the result comes back in F
disp(F)                  % showing the result is done here, outside the function

%% Task 2: global variables
global x y               % declare x and y as global

x = 2*pi:-0.2:-2*pi;     % vector from 2*pi down to -2*pi, step -0.2

calc_y                   % call the function: no brackets, no arguments

whos global              % show the global variables

figure
plot(x, y, 'y--*')       % yellow (y), dashed (--), asterisk markers (*)
xlabel('x')
ylabel('y')
title('y(x) = sin(x)/x, y(0) = 1')
grid on