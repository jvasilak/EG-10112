%% fibonacci.m
% This program will make use of for loops to find the first N terms in the
% fibonacci number sequence and find the sum of all of these numbers.

% Jonathon Vasilak
% February 5, 2020

% Clear memory
clear

% Clear command window
clc

%% Define Variables
% Defines the variables that will be needed for the for loop to run
fib = 0;
fib1 = 0;
fib2 = 1;
N = input('How many integers in the Fibonacci chain after zero would you like to see? ');
%% For Loop
% Creates a for loop that finds the sum of the fibonacci numbers
sum = 0;
for inumber = 1:N
    fib = fib1 + fib2;
    sum = sum + fib;
    fib1_stay = fib1;
    fib1 = fib2;
    fib2 = fib2+fib1_stay;
end
actual_sum = sum + 1;
%% Display output
% Displays the sum of the first N fibonacci numbers to the user.
disp(['The sum of the first ', num2str(N), ' Fibonacci numbers after zero is ', num2str(actual_sum), '.']);


