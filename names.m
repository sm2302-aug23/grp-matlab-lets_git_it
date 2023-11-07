% Nicknames:
% 1. izz (Izznie)
% 2. qil (Aqilah)
% 3. syaf (Syafiqah)
% 4. Bibi (Bibi)

%% izz
% letter i 
% Define data points for x and y coordinates
x1 = [2.75 3.25 3.375 3.125 3.375 3.75];
y1 = [2.5 3 3.25 2.25 1.75 2.5];
dot_x1 = 3.425; % for the dot on the i 
dot_y1 = 3.625;

% Define the amount of shift to the right (offset)
x_shift1 = -2.75;
xdot_shift = -2.75;

% Apply the offset to x coordinates (horizontal) 
x1 = x1 + x_shift1;
dot_x1 = dot_x1 + xdot_shift;

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
plot(dot_x1, dot_y1, 'bo', 'MarkerFaceColor', 'b')
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 6 -0.2 5])
grid on
title('Spline Interpolation of Cursive Izz')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% qila
% LETTER Q
% Define data points for x and y coordinates 
x1 = [1.25 0.75 0.375 0.25 0.5 1 1.25 1 0.875 1 1.375 0.875 1.75];
y1 = [3.375 3.375 3 2.5 2.25 2.75 3.375 2.75 2 0.5 1.375 2 2.5];

% letter i
% Define data points for x and y coordinates
x2 = [2.75 3.25 3.375 3.125 3.375 3.75];
y2 = [2.5 3 3.25 2.25 1.75 2.5];
dot_x2 = 3.425;    
dot_y2 = 3.625;

% Define the amount of shift to the left (offset)
x_shift2 = -1.00;
xdot_shift = -1.00;

% Apply the offset to x coordinates (horizontal) 
x2 = x2 + x_shift2;
dot_x2 = dot_x2 + xdot_shift;

% LETTER L
% Define data point for x and y coordinates 
x3 = [0.25 1.00 1.625 1.75 1.50 1.125 1.00 1.125 1.375 1.75];
y3 = [2.50 3.375 3.875 4.5 4.875 4.25 3.375 2.125 1.8125 2.5];

% Define the amount of shift to the right (offset)
x_shift3 = 2.50;

% Apply the offset to x coordinates (horizontal) 
x3 = x3 + x_shift3;

% letter A

x4 = [1 0.25 0.5 0.9 0.9 1 1 1 1 1.25 1.75];
y4 = [3 2.5 1.75 2 2 2.5 3 2.5 2.25 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift4 = 4.00;

% Apply the offset to x coordinates (horizontal) 
x4 = x4 + x_shift4;

% Concatenate data points
x = [x1 x2 x3 x4];
y = [y1 y2 y3 y4];

n = length(x);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

% Plot settings
figure(2)
plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
hold on
plot(dot_x2, dot_y2, 'bo', 'MarkerFaceColor', 'b')
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 6 -0.2 5])
grid on
title('Spline Interpolation of Cursive Qila')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% syaf
% letter s
x1 = [1.25 0.75 0.5 0.75 1.375 0.75 0.375 1.75];
y1 = [3.5 3.8 3.5 3 1.625 0.875 1.5 2.5];

% letter y 
x2 = [0.5 0.55 0.6 0.75 1 1.5 1.5 1.25 0.5 0.5 2.25];
y2 = [2.5 2.55 2.6 2.75 2 2.75 1.5 0.5 0.25 1 2.5];

% Define the amount of shift to the right (offset)
x_shift2 = 1.25;

% Apply the offset to x coordinates (horizontal) 
x2 = x2 + x_shift2;

% letter a
x3 = [1 0.25 0.5 0.9 0.9 1 1 1 1 1.25 1.75];
y3  = [3 2.5 1.75 2 2 2.5 3 2.5 2.25 1.75 2.5];

% Define the amount of shift to the right (offset)
x_shift3 = 3.25;

% Apply the offset to x coordinates (horizontal) 
x3 = x3 + x_shift3;

% LETTER F
% Define data points for x and y coordinates 
x4 = [0.5 1 1.5 1.625 1.25 1 0.875 0.8125 1 1.25 1.17 0.875 1.625];
y4 = [2.5 2.875 3.5 4.25 4.5 3.5 2.375 1.5 1.0625 1.5 2 2.375 2.5];

% Define the amount of shift to the right (offset)
x_shift4 = 4.5;

% Apply the offset to x coordinates (horizontal) 
x4 = x4 + x_shift4;

% Concatenate data points
x = [x1 x2 x3 x4];
y = [y1 y2 y3 y4];

n = length(x);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

% Compute spline interpolation
xx = spline(t, x, tt);
yy = spline(t, y, tt);

% Plot settings
figure(3)
plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 7 -0.2 5])
grid on
title('Spline Interpolation of Cursive Syaf')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

%% bibi
% letter b 
% Define data points for x and y coordinates
x1 = [0.5 1.125 1.75 1.625 1.25 1.75 2 1.375 1.125 2.75];
y1 = [2.5 3.25 4.25 5.25 2.5 3.25 2 1.5 2 2.5];

% letter I
% Define data points for x and y coordinates
x2 = [2.75 3.25 3.375 3.125 3.375 3.75];
y2 = [2.5 3 3.25 2.25 1.75 2.5];
dot_x2 = 3.425;
dot_y2 = 3.625;

% letter b 
% Define data points for x and y coordinates
x3 = [0.5 1.125 1.75 1.625 1.25 1.75 2 1.375 1.125 2.75];
y3 = [2.5 3.25 4.25 5.25 2.5 3.25 2 1.5 2 2.5];

% Define the amount of shift to the right (offset)
x_shift3 = 3.7;

% Apply the offset to x coordinates (horizontal) 
x3 = x3 + x_shift3;

% letter I
% Define data points for x and y coordinates
x4 = [2.75 3.25 3.375 3.125 3.375 3.75];
y4 = [2.5 3 3.25 2.25 1.75 2.5];
dot2_x2 = 3.425;
dot2_y2 = 3.625;

% Define the amount of shift to the right (offset)
x_shift4 = 3.7;
xdot2_shift = 3.7;

% Apply the offset to x coordinates (horizontal) 
x4 = x4 + x_shift4;
dot2_x2 = dot2_x2 + xdot2_shift;

% Concatenate data points
x = [x1 x2 x3 x4];
y = [y1 y2 y3 y4];


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
plot(dot_x2, dot_y2, 'bo', 'MarkerFaceColor', 'b')
plot(dot2_x2, dot2_y2, 'bo', 'MarkerFaceColor', 'b') % plot for dot
plot(x, y, 'bo', 'MarkerFaceColor', 'b') % plot data points
axis([-0.2 8 -0.2 6])
grid on
title('Spline Interpolation of Cursive bibi')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
