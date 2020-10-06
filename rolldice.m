function [die1, die2, sum] = rolldice
% Jonathon Vasilak
% This function will simulate the roll of two fair dice
% Possible returns:
% die1: an integer in the range [1,6]
% die2: an integer in the range [1,6]
% resultstr is the string value of the sum of die1 and die2
% 'snake eyes' when the sum is 2
% 'ace-deuce' when the sum is 3
% 'yo' when sum is 11
% 'boxcars' when the sum is 12
% 'natural' when the sum is 7
% 'hard six' when die1 and die2 both equal 3
% 'hard four' when die1 and die2 both equal 2

die1 = randi(6);
die2 = randi(6);
sum = die1 + die2;


