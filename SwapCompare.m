%% SwapCompare.m
%  This program first swaps the values of two variables. The program then 
%  uses the user-defined function swap to accomplish the same task. 

%  Name: 
%  February 27, 2020

%  Clear memory
clear
%  Clear Command Window
clc

%% Swap the variables without using a function
% Initial first set of variable values
x = 2; 
y = 3; 

%temp = x;
%x = y;
%y = temp;
% Swapping the variable values
 % you need to use a temporary variable to save the value of x
% reset x with the old value of y
 % change y to the old value of x (now saved in temporary variable)
[x1, y1] = swap(x,y);
%% Swap the variables with a user-defined function
% Initial second set of variable values


% Swapping the variables with swap function