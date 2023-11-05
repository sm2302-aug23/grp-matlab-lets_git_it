% Define data points for each letter in cell arrays 
lettersData = {
    % Letter A
    {...
    [1 0.25 0.5 0.9 0.9 1 1 1 1 1.25 1.75],...
    [3 2.5 1.75 2 2 2.5 3 2.5 2.25 1.75 2.5],...
    'A'...
    },...
    
    % Letter Q
    {...
    [1.25, 0.75, 0.375, 0.25, 0.5, 1, 1.25, 1, 0.875, 1, 1.375,...
    0.875, 1.75],...
    [3.375, 3.375, 3, 2.5, 2.25, 2.75, 3.375, 2.75, 2, 0.5, 1.375,...
    2, 2.5],...
    'B'...
    },...

    % Letter I
    {...
    [2.75 3.25 3.375 3.125 3.375 3.75],...
    [2.5 3 3.25 2.25 1.75 2.5],...
     3.375, 3.625,...
     'I'...
     },...

     % Letter L
     {...
     [0.25, 1.00, 1.625, 1.75, 1.50, 1.125, 1.00, 1.125, 1.375, 1.75],...
     [2.50, 3.375,3.875, 4.5, 4.875, 4.25, 3.375, 2.125, 1.8125, 2.5],...
     'L'...
     },....
}
% Creat e a single figure 
figure(1)

% Loop through the data for each letter and plot 
for i = 1:numel(lettersData)
    letter = lettersData{i};

    % Extract data
    x = letter{1};
    y = letter{2};
    letterName = letter{3};

    % Calculate the number of data points
    n = length(x);

    % Parametric coordinate t 
    t = 0:n-1;

    % More dense coordinate tt for spline interpolation 
    tt = 0:0.01:n-1;

    % Compute splien interpolation 
    xx = spline(t, x, tt);
    yy = spline(t, y, tt);

    % Plot the letter 
    plot(xx, yy, 'k', 'LineWidth', 1.5); % Plot spline
    hold on;
    plot(x, y, 'bo', 'MarkerFaceColor', 'b'); % Plot data points 
    axis([-0.2 6 -0.2 4.5]);
    grid on;

    % Tirle and labels
    title(['Spline Interpolation of Cursive Letter' letterName]);
    xlabel('x');
    ylabel('y');
    set(gca, 'FontSize', 10, 'LineWidth', 1);
end 


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
