%% Letter I
% Define data points for x and y coordinates
x = [2.75 3.25 3.375 3.125 3.375 3.75];
y = [2.5 3 3.25 2.25 1.75 2.5];
dot_x = 3.375;
dot_y = 3.625; 

% Define the amount of shift to the right (offset)
x_shift = -2.75;

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
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on


%% Letter Z

x = [0.25 1.25 1 0.75 1.5 0.5 0.75 1.5 2];
y = [2.5 3 2.5 2 2 0.5 1 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift = 0.75;

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
title('Spline Interpolation of Cursive Letter Z')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% Letter z(2)

x = [0.25 1.25 1 0.75 1.5 0.5 0.75 1.5 2];
y = [2.5 3 2.5 2 2 0.5 1 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift = 2.5;

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
title('Spline Interpolation of Cursive Letter Z')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
