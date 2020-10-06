function [x0, N] = countemF(a,b)
% Jonathon Vasilak
% February 27, 2020
% This function turns the Countem.m program I previously created into a
% function
% Defines the number you will start counting from
x0 = a;
% Defines the number of integers the program will count
N = b-1;
% simulates counting from the intial value to the final value, which is
% determined by adding the intial value and the number of integers the
% program will be counting
for i = x0:x0+N
   disp(num2str(i)); 
end