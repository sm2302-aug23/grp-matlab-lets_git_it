function plotWords(Name)
if nargin < 1 
  error('Please provide a name to plot.');  
end 

% Define a comtainer map to store letters and their instructions 
letterMap = containers.Map('KeyType', 'char', 'ValueType', 'any');

% Define instructions for each letter in your name 
% You can define the instructions as a series of (x,y) coordinates 
letterMap('b') = [0.5 2.5; 1.125 3.25; 1.75 4.25; 1.625 5.25; 1.25 2.5; 1.75 3.25; 2 2; 1.375 1.5; 1.125 2; 2.75 2.5];
letterMap('i') = [2.75 2.5; 3.25 3; 3.375 3.25; 3.125 2.25; 3.375 1.75; 
    3.75 2.5];   
letterMap('z') = [0.25 2.5; 1.25 3; 1 2.5; 0.75 2; 1.5 2; 0.5 0.5; 0.75 1;
    1.5 1.75; 2.25 2.5]

currentPosition = [0 0]; 
allX = [];
allY =[];

% Loop through the letters in your name and draw 
for i = 1:length(Name)
    letter = (Name(i)); 
    if isKey(letterMap, letter)
        instructions = letterMap(letter);
        instructions(:,1) = instructions(:,1) + currentPosition(1);
        instructions(:,2) = instructions(:,2) + currentPosition(2);
        allX = [allX; instructions(:,1)];
        allY = [allY; instructions(:,2)];

        if i < length(Name)
        currentPosition(1) = max(instructions(:,1)), + 0.1;
        end
    else
        fprintf('Letter "%s" is not defined.\n', letter);
    end
end 

dotPosition = calculateDotPosition(allX, allY);

plot(dotPosition(1), dotPosition(2), 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'b');

t = 1:0.01:length(allX);
interpolatedX = interp1(allX, t, 'spline');
interpolatedY = interp1(allY, t, 'spline');

hold on;
plot(interpolatedX, interpolatedY, 'b', 'LineWidth', 2);
hold off; 

axis equal;
title('Name');
xlabel('x');
ylabel('y');
end 

function dotPosition = calculateDotPosition(allX, allY)

iPath = [allX, allY];

[~, highestPointIndex] = min(iPath(:,2));
dotPosition = iPath(highestPointIndex, :);
end

