%% changeArray.m
% This program loads the array "arrayVals.txt", then finds the size of the
% array. Using loops, the program will then check each element of the array
% and determine if the value is less than a previously defined minimum. The
% program then reports how many values of the array were less than the
% minimum value.

% Jonathon Vasilak
% February 11, 2020

% Clear Memory
clear
% Clear Command Window
clc

%% Load Data
% Loads the array from "arrayVals.txt"
data = load('ArrayVals.txt');
original_data = data;
[rows,cols]=size(data);
%% Define Parameters
% Defines the minimum value and the count of values less than the minimum.

nMin = 20;
less_count = 0;

%% Check Array Elements
% Checks each value of the array to see if it is less than the minimum
% using nested loops

for irow = 1:rows
    for icol = 1:cols
        if data(irow,icol) < nMin
            data(irow, icol) = data(irow, icol) * 2;
           less_count = less_count + 1;
        end
    end
end
disp(['There were ', num2str(less_count), ' values less than ', num2str(nMin), ' in this array.']);
disp(' ');
disp('The original array is: ');
disp(num2str(original_data));
disp(' ');
disp('The new array is:');
disp(num2str(data)); 
