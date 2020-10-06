%% plotellipse.m
% This program animates the plotting of the following ellipse defined below
% x = rcos(omega*t)
% y = rsin(omega*t+alpha)

% Jonathon Vasilak
% February 12, 2020

% Clear memory
clear

% Clear Command window
clc

%% Define Parameters
% Defines the variables that will be needed to plot the ellipse
omega = 2*pi;
r = 3; 
alpha = 1; 
tmin = 0; % Starting time
tmax = 1; % Ending time
Nt = 100; % Number of steps

%% Initialize arrays
% Creates the arrays which will be later used to plot the ellipse
t=linspace(tmin, tmax, Nt);
x = zeros(1,Nt);
y = zeros(1,Nt);

%% Calculate Motion
% Uses a for loop to calculate all the points on the ellipse that will be
% plotted
for it = 1:Nt
    x(it)=r*cos(omega*t(it));
    y(it)=r*sin(omega*t(it)+alpha);
end

%% Plot Ellipse
% Plots the ellipse using a for loop to animate the plotting
for it = 1:Nt
plot(x(it), y(it), 'ro',...
    x(1:it), y(1:it), 'b');
xlabel('x')
ylabel('y')
grid on
axis([-4 4 -4 4]);
drawnow
end