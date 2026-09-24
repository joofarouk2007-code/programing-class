%% NAME: YOUSSIF MOHAMMED FAROUK BASTAWISY
%% GROUP: EDIFU25/1
%% Laboratory Work 3 - Preparation of 2D graphics
%% Variant 2


clear;
clc;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TASK 1 - CREATING 2-D GRAPHS

x = 0:0.1:2*pi;

m = 2;

f1 = x.^2 + m*x;
f2 = exp(x);
f3 = exp(-x);
f4 = exp(x);


%% Figure 1 - First function

figure(1);

plot(x, f1);

xlabel('x');
ylabel('f_1(x)');

title('f_1(x) = x^2 + mx');

grid on;

xlim([0 2*pi]);


%% Figure 2 - All four functions

figure(2);

plot(x, f1, 'r-', ...
    x, f2, 'b--', ...
    x, f3, 'g:', ...
    x, f4, 'k-.');

xlabel('x');
ylabel('f(x)');

title('Four functions');

legend('f_1(x)', 'f_2(x)', 'f_3(x)', 'f_4(x)');

grid on;

xlim([0 2*pi]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% TASK 2 - SPECIALIZED PLOTS


marks = [
    8  7  9  6;
    6  9  8  7;
    10 8  7  9;
    7  6  8  8;
    9  10 9  8;
    5  7  6  9
];


students = {'youssif', 'omar', 'ali', ...
            'mohamed', 'steve', 'frank'};

exams = {'Exam 1', 'Exam 2', 'Exam 3', 'Exam 4'};


%% Figure 3 - Exam results

figure(3);

bar(marks);

xlabel('Students');
ylabel('Marks');

title('Student exam results');

xticks(1:6);
xticklabels(students);

legend(exams);

grid on;

ylim([0 10]);


%% Figure 4 - Total marks

total = sum(marks, 2);

figure(4);

bar(total);

xlabel('Students');
ylabel('Total marks');

title('Total exam marks for each student');

xticks(1:6);
xticklabels(students);

grid on;

ylim([0 40]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMPLEMENTARY TASK
% GRAPHICAL REPRESENTATION OF SIGNALS

A = 4;
f = 3;
sigma = 1;

U1 = 2.5;
U2 = 1.5;

t = 0:0.002:1.5;

s = A*sin(2*pi*f*t);

n = sigma*randn(size(t));

x = s + n;


% Filtering the signal
filtered = x;

filtered(abs(filtered) < U2) = 0;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIGURE 5 - TWO GRAPHS

figure(5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TOP GRAPH
% Original signal + filtered signal + thresholds


subplot(2,1,1);

% Original signal - BLACK SOLID
plot(t, x, 'k-', 'LineWidth', 1.2);

hold on;

% Filtered signal - BLUE DOTTED
plot(t, filtered, 'b:', 'LineWidth', 1.2);

% Threshold U1
yline(U1, 'k--', 'U1');

% Threshold U2
yline(U2, 'k--', 'U2');

xlabel('Time (s)');
ylabel('Voltage');

title('Original and filtered signals');

legend('Original signal', ...
       'Filtered signal', ...
       'U1', ...
       'U2', ...
       'Location', 'southeast');

grid on;


% Set axis limits
ymin = min([x filtered U1 U2]);
ymax = max([x filtered U1 U2]);

ylim([ymin - 0.5 ymax + 0.5]);

xlim([t(1) t(end)]);

hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BOTTOM GRAPH
% Original signal + values exceeding U1


subplot(2,1,2);


% Create a version containing only values exceeding U1
above_U1_plot = x;

above_U1_plot(abs(x) <= U1) = NaN;


% Original signal - BLACK SOLID
plot(t, x, 'k-', 'LineWidth', 1.2);

hold on;


% Values exceeding U1 - BLUE DOTS
plot(t, above_U1_plot, 'b.', 'MarkerSize', 10);


% Find maximum value and its location
maxValue = max(x);

maxIndex = find(x == maxValue);


% Find minimum value and its location
minValue = min(x);

minIndex = find(x == minValue);


% Maximum - CIRCLE
plot(t(maxIndex), x(maxIndex), 'ko', ...
    'MarkerSize', 8, ...
    'LineWidth', 2);


% Minimum - DIAMOND
plot(t(minIndex), x(minIndex), 'kd', ...
    'MarkerSize', 8, ...
    'LineWidth', 2);


xlabel('Time (s)');
ylabel('Voltage');

title('Original signal and values exceeding U1');


legend('Original signal', ...
       'Values exceeding U1', ...
       'Maximum', ...
       'Minimum', ...
       'Location', 'southeast');

grid on;


% Set axis limits
xlim([t(1) t(end)]);

ymin = min([x U1]);
ymax = max([x U1]);

ylim([ymin - 0.5 ymax + 0.5]);

hold off;
