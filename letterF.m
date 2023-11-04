%% LETTER F
% Define data points for x and y coordinates 
x = [0.5 1 1.5 1.625 1.25 1 0.875 0.8125 1 1.25 1.17 0.875 1.625];
y = [2.5 2.875 3.5 4.25 4.5 3.5 2.375 1.5 1.0625 1.5 2 2.375 2.5]

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
title('Spline Interpolation of Cursive Letter F')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
