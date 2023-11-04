function plotWords()
% Define a comtainer map to store letters and their instructions 
letterMap = containers.Map();

% Define instructions for each letter in your name 
% You can define the instructions as a series of (x,y) coordinates 
letterMap('i') = [2.75 2.5; 3.25 3; 3.375 3.25; 3.125 2.25; 3.375 1.75; 
    3.75 2.5]   
letterMap('z') = [0.25 2.5; 1.25 3; 1 2.5; 0.75 2; 1.5 2; 0.5 0.5; 0.75 1;
    1.5 1.75; 2.25 2.5]

% Name 
Name = 'izz';

% Loop through the letters in your name and draw 
for i = 1:length(Name)
    letter = (Name(i)); 
    if isKey(letterMap, letter)
        instructions = letterMap(letter);
        plot(instructions(:,1), instructions(:,2), 'b', 'LineWidth', 2);
        hold on; 
    else 
        fprintf('Letter "%s" is not defined.\n', letter);
    end
end 

axis equal;
title('Name');
xlabel('x');
ylabel('y');
hold off; 
end 






