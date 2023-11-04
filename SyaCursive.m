%% Letter S

x = [1.25 0.75 0.5 0.75 1.375 0.75 0.375 1.75];
y = [3.5 3.8 3.5 3 1.625 0.875 1.5 2.5];

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
title('Spline Interpolation of Cursive Letter D')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on


%% Letter Y

x = [0.5 0.55 0.6 0.75 1 1.5 1.5 1.25 0.5 0.5 2.25];
y = [2.5 2.55 2.6 2.75 2 2.75 1.5 0.5 0.25 1 2.5];

x_shift = 1.25;

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
title('Spline Interpolation of Cursive Letter D')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% letter a

x = [1 0.25 0.5 0.9 0.9 1 1 1 1 1.25 1.75];
y = [3 2.5 1.75 2 2 2.5 3 2.5 2.25 1.75 2.5];

x_shift = 3.25;

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
title('Spline Interpolation of Cursive Letter D')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
