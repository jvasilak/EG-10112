%% animateddamped.m
% Starting with the code plotdamped.m, create a new variable and define it
% as either true or false. Then if the variable is true, then then plot
% will be animated while plotting. If it is false, there will be no
% animation.

% Jonathon Vasilak
% February 12, 2020

% Clear memory
clear
% Clear command window
clc
%% Define parameters
% Defines the variable for the function which will be plotted later.
doAnimate = true;

xmin = 0;
xmax = 10;
Nx = 20;
a = input('What would you like your value of a to be? ');
lambda = input('What would you like your value of lambda to be? ');
%% Tabulate values
% Defines the variables for the graph.

x = linspace(xmin, xmax, Nx);
y = exp(-x/a).*cos((2*pi*x)/lambda);

%% Plot values
% Plot the x and y arrays and structure the graph.
if doAnimate == true
    for i = 1:Nx
    plot(x(i),y(i), 'ro',...
    x(1:i), y(1:i), 'b');
axis([xmin xmax -1 1]);
    drawnow
    end
elseif doAnimate == false
    plot(x,y);
end



xlabel('x');
ylabel('y');
grid on
title 'Damped motion'
