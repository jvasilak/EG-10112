function plotdampedF(app)
%% plotdamped.m
% This program plots the following function:
% f(x)=e^(-x/a)cos(2pix/lambda)


% Jonathon Vasilak
% January 29, 2020



%% Define parameters
% Defines the variable for the function which will be plotted later.

xmin = -5;
xmax = 5;
Nx = 20;
a = app.aSlider.Value;
lambda = app.lambdaSlider.Value;
%% Tabulate values
% Defines the variables for the graph.

x = linspace(xmin, xmax, Nx);
y = exp(-x/a).*cos((2*pi*x)/lambda);

%% Plot values
% Plot the x and y arrays and structure the graph.

plot(app.dampedAxes, x,y);

xlabel(app.dampedAxes, 'x');
ylabel(app.dampedAxes, 'y');
title (app.dampedAxes, 'Damped motion')