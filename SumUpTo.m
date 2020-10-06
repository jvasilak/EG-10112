%% SumUpTo.m
% Makes use of a for loop to determine the sum of all positive numbers from
% 1 to the variable N.

% Jonathon Vasilak
% February 5, 2020


% Clear memory and command window
clear
clc
%% Define Parameters
% Defines the variables that will be used in the for loop
k = 1;
sum = 0;
N = 100;

%% For loop
% Calculates the sum of all integers from 1 to N
for ix = 1:N
    sum = ix +sum;
end

%% Output
% Displays the sum of the numbers for the user
disp(['The sum of all positive integers from 1 to ', num2str(N), ' is ', num2str(sum), '.']);
