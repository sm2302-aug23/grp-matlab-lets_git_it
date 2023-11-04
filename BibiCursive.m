%% Letter B
% Define data points for x and y coordinates
x = [0.5 1.125 1.75 1.625 1.25 1.75 2 1.375 1.125 2.75];
y = [2.5 3.25 4.25 5.25 2.5 3.25 2 1.5 2 2.5];

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
title('Spline Interpolation of Cursive Letter B')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% Letter I
% Define data points for x and y coordinates
x = [2.75 3.25 3.375 3.125 3.375 3.75];
y = [2.5 3 3.25 2.25 1.75 2.5];
dot_x = 6.6;
dot_y = 3.625; 

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

%% Letter B(2)
% Define data points for x and y coordinates
x = [0.5 1.125 1.75 1.625 1.25 1.75 2 1.375 1.125 2.75];
y = [2.5 3.25 4.25 5.25 2.5 3.25 2 1.5 2 2.5];

x_shift = 3.25;
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
title('Spline Interpolation of Cursive Letter B')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% Letter I (2)
% Define data points for x and y coordinates
x = [2.75 3.25 3.375 3.125 3.375 3.75];
y = [2.5 3 3.25 2.25 1.75 2.5];
dot_x = 3.375;
dot_y = 3.625; 

x_shift = 3.25;
x = x + x_shift

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