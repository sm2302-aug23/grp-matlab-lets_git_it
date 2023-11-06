function plotWord(Name)
if nargin < 1 
  error('Please provide a name to plot.');  
end 

% Define a comtainer map to store letters and their instructions 
letterMap = containers.Map('KeyType', 'char', 'ValueType', 'any');

% Define instructions for each letter in your name 
% You can define the instructions as a series of (x,y) coordinates 
letterMap('a') = [1 3; 0.25 2.5; 0.5 1.75; 0.9 2; 0.9 2; 1 2.5; 1 3; 
    1 2.5; 1 2.25; 1.25 1.75;1.75 2.5];
letterMap('b') = [0.5 2.5; 1.125 3.25; 1.75 4.25; 1.625 5.25; 1.25 2.5; 
    1.75 3.25; 2 2; 1.375 1.5; 1.125 2; 2.75 2.5];
letterMap('f') = [0.5 2.5; 1 2.875; 1.5 3.5; 1.625 4.25; 1.25 4.5; 1 3.5; 
    0.875 2.375; 0.8125 1.5; 1 1.0625; 1.25 1.5; 1.17 2; 0.875 2.375; 
    1.625 2.5];
letterMap('i') = [2.75 2.5; 3.25 3; 3.375 3.25; 3.125 2.25; 
    3.375 1.75; 3.75 2.5];
letterMap('l') = [0.25 2.50; 1 3.375; 1.625 3.875; 1.75 4.5; 
    1.50 4.875; 1.125 4.25; 1 3.375; 1.125 2.125; 1.375 1.8125;
     1.75 2.5];
letterMap('q') = [1.25 3.375; 0.75 3.375; 0.375 3; 0.25 2.5; 0.5 2.25; 
    1 2.75; 1.25 3.375; 1 2.75; 0.875 2; 1 0.5; 1.375 1.375; 0.875 2; 
    1.75 2.5];
letterMap('s') = [1.25 3.5; 0.75 3.8; 0.5 3.5; 0.75 3; 1.375 1.625; 
    0.75 0.875; 0.375 1.5; 1.75 2.5];
letterMap('y') = [0.5 2.5; 0.55 2.55; 0.6 2.6; 0.75 2.75; 1 2; 
    1.5 2.75; 1.5 1.5; 1.25 0.5; 0.5 0.25; 0.5 1; 2.25 2.5];
letterMap('z') = [0.25 2.5; 1.25 3; 1 2.5; 0.75 2; 1.5 2; 0.5 0.5; 0.75 1;
    1.5 1.75; 2.25 2.5];

currentPosition = [0 0]; 
allX = [];
allY =[];

% Initialize dotPositions outside the loop
dotPositions = zeros(0,2);

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

        if letter == 'i'
            [~, highestPointIndex] = max(instructions(:,2));
            dotPosition = instructions(highestPointIndex, :);
            dotPosition(1) = dotPosition(1) + 0.1;
            dotPosition(2) = dotPosition(2) + 0.4;
            dotPositions = [dotPositions; dotPosition];
            end
    else
        fprintf('Letter "%s" is not defined.\n', letter);
    end
end 

if ~isempty(dotPositions)
    plot(dotPositions(:,1), dotPositions(:,2), 'bo', 'MarkerSize', 5, ...
     'MarkerFaceColor', 'b');
end

t = 1:0.01:length(allX);
interpolatedX = interp1(allX, t, 'spline');
interpolatedY = interp1(allY, t, 'spline');

hold on;
plot(interpolatedX, interpolatedY, 'b', 'LineWidth', 2);
hold off; 

axis equal;
title(Name);
xlabel('x');
ylabel('y');
end 


