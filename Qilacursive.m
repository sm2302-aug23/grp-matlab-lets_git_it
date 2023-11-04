%% qila cursive plot

%% LETTER Q
% Define data points for x and y coordinates 
x = [1.25, 0.75, 0.375, 0.25, 0.5, 1, 1.25, 1, 0.875, 1, 1.375,...
    0.875, 1.75];
y = [3.375, 3.375, 3, 2.5, 2.25, 2.75, 3.375, 2.75, 2, 0.5, 1.375,...
    2, 2.5];

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
title('Spline Interpolation of Cursive Letter Q')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% Letter I
% Define data points for x and y coordinates
x = [2.75 3.25 3.375 3.125 3.375 3.75];
y = [2.5 3 3.25 2.25 1.75 2.5];
dot_x = 2.375;
dot_y = 3.625;

% Define the amount of shift to the left (offset)
x_shift = -1.00;

% Apply the offset to x coordinates (horizontal) 
x = x + x_shift;

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
text(dot_x, dot_y, '•', 'Color', 'k', 'FontSize', 13);
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Letter I')
xlabel('x')

%% LETTER L
% Define data point for x and y coordinates 
x = [0.25, 1.00, 1.625, 1.75, 1.50, 1.125, 1.00, 1.125, 1.375, 1.75];
y = [2.50, 3.375,3.875, 4.5, 4.875, 4.25, 3.375, 2.125, 1.8125, 2.5];

% Define the amount of shift to the right (offset)
x_shift = 2.50;

% Apply the offset to x coordinates (horizontal) 
x = x + x_shift;

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
title('Spline Interpolation of Cursive Letter L')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% letter A

x = [1 0.25 0.5 0.9 0.9 1 1 1 1 1.25 1.75];
y = [3 2.5 1.75 2 2 2.5 3 2.5 2.25 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift = 4.00;

% Apply the offset to x coordinates (horizontal) 
x = x + x_shift;

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
title('Spline Interpolation of Cursive Letter A')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

