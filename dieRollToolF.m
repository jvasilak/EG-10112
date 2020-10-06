function dieRollToolF(app)

% This program will simulate the rolling of a six sided die as many times
% as it will take for one number to be rolled a prespecified amount of
% times. Once this occurs, the program stops simulating the rolling of the
% die and reports how many times each number was rolled to the user.

% Jonathon Vasilak
% March 24, 2020


%% Define Parameters
% Defines variables that will be needed to simulate the rolling of a die
% multiple times
N = app.RollsField.Value; % Number of times you want to roll one number before the program stops

% How many times each number has been rolled
count = zeros(1,6);
highest_count = 0;
%% Simulate
% Rolls a die until one number has been rolled the prespecified number of
% times, saving how many times each number has been rolled

while highest_count < N
roll = randi(6);
if roll == 1
    count(1,1) = count(1,1) + 1;
    app.OnesTextArea.Value = num2str(count(1,1));
elseif roll == 2
    count(1,2) = count(1,2) + 1;
    app.TwosTextArea.Value = num2str(count(1,2));
elseif roll == 3
    count(1,3) = count(1,3) + 1;
    app.ThreesTextArea.Value = num2str(count(1,3));
elseif roll == 4
    count(1,4) = count(1,4) + 1;
    app.FoursTextArea.Value = num2str(count(1,4));
elseif roll == 5
    count(1,5) = count(1,5) + 1;
    app.FivesTextArea.Value = num2str(count(1,5));
elseif roll == 6
    count(1,6) = count(1,6) + 1;
    app.SixesTextArea.Value = num2str(count(1,6));
end
highest_count = max(count);
pause(0.1);
end
