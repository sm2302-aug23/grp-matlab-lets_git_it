%% izz
% letter i 
% Define data points for x and y coordinates
x1 = [2.75 3.25 3.375 3.125 3.375 3.75];
y1 = [2.5 3 3.25 2.25 1.75 2.5];
dot_x = 3.375;
dot_y = 3.625;

% Define the amount of shift to the right (offset)
x_shift1 = -2.75;

% Apply the offset to x coordinates (horizontal) 
x1 = x1 + x_shift1;

% letter z
% Define data points for x and y coordinates
x2 = [0.25 1.25 1 0.75 1.5 0.5 0.75 1.5 2.25];
y2 = [2.5 3 2.5 2 2 0.5 1 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift2 = 0.75;

% Apply the offset to x coordinates (horizontal) 
x2 = x2 + x_shift2;

% letter z(2)
% Define data points for x and y coordinates
x3 = [0.25 1.25 1 0.75 1.5 0.5 0.75 1.5 2.25];
y3 = [2.5 3 2.5 2 2 0.5 1 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift3 = 2.5;

% Apply the offset to x coordinates (horizontal) 
x3 = x3 + x_shift3;

% Concatenate data points
x = [x1 x2 x3];
y = [y1 y2 y3];

n = length(x);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

% Plot settings
figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Izz')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% qil

