%% plotlogistic.m
% This program plots the logistic function, which uses the following
% function:
%
% p(y) = 1/(1+e^(-((y-y0)/a)));
% 
% The script allows the user to vary the paramaters y0 and a.

% Author: Jonathon Vasilak
% Date: February 27, 2020

% Clear memory
clear
% Clear Command Window
clc
% Close all figures
close all

%% Set parameters
% Set the parameters that can be varied in the program
% curve 1
y0_1 = 0.75; 
a_1 = 0.1; 
% curve 2
y0_2 = 0.75; 
a_2 = 0.05; 

% Specify the properties related to the t vector (time)
ymin = 0;
ymax = 2; 
Ny = 200; % this value changes how coarse the plot looks 

%% Calculate the vectors
% Create the x vector using the linspace command. 
y = linspace(ymin,ymax,Ny);

% Calculate the y vector using the equation listed in the header
p1 = logisticF(y, y0_1, a_1);
p2 = logisticF(y, y0_2, a_2);


%% Plot the results
% Create a new figure with the figure function
figure

% Plot the results using the plot function
plot(y,p1,y,p2)

% Label the axes
xlabel('y')
ylabel('p')

% Give the figure a title
title('plotlogistic.m')

% Turn the grid on 
grid on