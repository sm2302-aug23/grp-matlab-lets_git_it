 % Define data points for x and y coordinates
% Define data points for x and y coordinates
x = [3 1.75 0.9 0 0.5 1.5 3.25 4.25 4.25 3 3.75 6.00];
y = [4 1.60 0.5 0 1.0 0.5 0.50 2.25 4.00 4 3.25 4.25];

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

% a e i 
% b f h l q z s y 



% Define data points for x and y coordinates
x = [2.5 3 2.875 3.125 3.5];
y = [1 2 0.75 0.25 1];
dot_x = 2.9;
dot_y = 2.5; 

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
title('Spline Interpolation of Cursive Letter D')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on


