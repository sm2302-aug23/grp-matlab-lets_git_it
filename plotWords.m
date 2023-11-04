function plotWords(~)
% Define a comtainer map to store letters and their instructions 
letterMap = containers.Map();

% Define instructions for each letter in your name 
% You can define the instructions as a series of (x,y) coordinates 
letterMap('b') = [0.5 2.5; 1.125 3.25; 1.75 4.25; 1.625 5.25; 1.25 2.5; 1.75 3.25; 2 2; 1.375 1.5; 1.125 2; 2.75 2.5];
letterMap('i') = [2.75 2.5; 3.25 3; 3.375 3.25; 3.125 2.25; 3.375 1.75; 
    3.75 2.5];   
letterMap('z') = [0.25 2.5; 1.25 3; 1 2.5; 0.75 2; 1.5 2; 0.5 0.5; 0.75 1;
    1.5 1.75; 2.25 2.5];

% Name 
Name = 'izz';

currentPosition = [0 0]; 
spacing = 0.02;
allInstructions = [];

% Loop through the letters in your name and draw 
for i = 1:length(Name)
    letter = (Name(i)); 
    if isKey(letterMap, letter)
        instructions = letterMap(letter);
        instructions = instructions + currentPosition;
        currentPosition = [currentPosition(1) + max(instructions(:,1)) + spacing, currentPosition(2)];
        allInstructions = [allInstructions; instructions];
    else 
        fprintf('Letter "%s" is not defined.\n', letter);
    end
end 

t = linspace(1, length(allInstructions), 500); 
interpolatedX = spline(1:length(allInstructions), allInstructions(:,1),t);
interpolatedY = spline(1:length(allInstructions), allInstructions(:,2),t);

plot(interpolatedX, interpolatedY,'b', 'LineWidth', 2);

axis equal;
title('Name');
xlabel('x');
ylabel('y');
end 






