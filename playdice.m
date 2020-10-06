%% playdice.m
% This program will use the rolldice.m function to simulate the rolling of
% two fair dice. The function will be repeated by a prespecified amount of
% times and will then report the results of each roll, as well as any
% special circumstances defined in the function, to the user in the command
% window.

% Jonathon Vasilak
% March 4, 2020

clear
clc

%% Establish Parameters
% Defines necessary variables to run rolldice function
special = 0;
N = 10;

%% Run Function Repeatedly
% Uses a for loop to run the rolldice function the prespecified amount of
% times. The loop then displays the results of the roll and determines if
% any special circumstances occured, reporting this to the user

for i = 1:N
    
    [die1, die2, sum] = rolldice;
    if sum == 2
        special = 'snake eyes';
    elseif sum == 3
        special = 'ace-deuce';
    elseif sum == 11
        special = 'yo';
    elseif sum == 12
        special = 'boxcars';
    elseif sum == 7
        special = 'natural';
    elseif die1 == 3 && die2 == 3
        special = 'hard six';
    elseif die1 == 2 && die2 == 2
        special = 'hard four';
    else
        special = ' ';
    end
    disp(['Player rolls a ', num2str(die1), ' and a ' num2str(die2), ' : ', special]);
end

