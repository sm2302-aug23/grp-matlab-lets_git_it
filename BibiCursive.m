%% bibi

% Letter B
% Define data points for x and y coordinates
x1 = [0.5 1.125 1.75 1.625 1.25 1.75 2 1.375 1.125 2.75];
y1 = [2.5 3.25 4.25 5.25 2.5 3.25 2 1.5 2 2.5];

% letter I
% Define data points for x and y coordinates
x2 = [2.75 3.25 3.375 3.125 3.375 3.75];
y2 = [2.5 3 3.25 2.25 1.75 2.5];
dot_x2 = 6.6;
dot_y2 = 3.625;

% Letter B(2)
% Define data points for x and y coordinates
x3 = [0.5 1.125 1.75 1.625 1.25 1.75 2 1.375 1.125 2.75];
y3 = [2.5 3.25 4.25 5.25 2.5 3.25 2 1.5 2 2.5];

% Define the amount of shift to the right (offset)
x_shift3 = 3.25;

% Apply the offset to x coordinates (horizontal) 
x3 = x3 + x_shift3;

% letter i 
% Define data points for x and y coordinates
x4 = [2.75 3.25 3.375 3.125 3.375 3.75];
y4 = [2.5 3 3.25 2.25 1.75 2.5];
dot_x4 = 3.375;
dot_y4 = 3.625; 

% Define the amount of shift to the right (offset)
x_shift4 = 3.25;

% Apply the offset to x coordinates (horizontal) 
x4 = x4 + x_shift4;

n = length(x);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

% Plot settings
figure(4)
plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 6 -0.2 5])
grid on
title('Spline Interpolation of Cursive bibi')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on



