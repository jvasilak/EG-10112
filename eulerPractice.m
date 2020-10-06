%% eulerPractice.m
%  This program approximates the following differential equation using
%  Euler's method and plots the result. 

%  dy/dx = cos(x)
%  y(t=0) = 0

% Jonathon Vasilak  
% February 6, 2020

%  Clear memory
clear
%  Clear Command Window
clc

%% Set Parameters
% Set the number of x values used in the x vector
Nx = 500;

% Set the minimum x value considered in the problem
xmin = 0;

% Set the maximum x value considered in the problem
xmax = 5*pi;

%% Initialize Vectors
% Create the x vector using the linspace function
x = linspace(xmin, xmax, Nx);

% Calculate deltax based on the first two time points in the x vector
dx = x(2) - x(1);

% Initialize/preallocate the y vector
y = zeros(1,Nx);

% Set the initial value of y (at x = 0) to be equal to 0. 
% NOTE: The index does not equal time. x(1) = 0, so y(1) = 0.
   % initial condition
y(1) = 0;
%% Calculate Y Values using Euler Method
% March through the x vector, calculating the next y from previous y and x
% values
for iy = 2:Nx
    y(iy) = cos(x(iy-1))*dx+y(iy-1);
end
%y(3) = cos(x(2))*dx+y(2);
%y(4) = cos(x(3))*dx+y(3);
% NOTE: You could also set the FOR loop up as follows: 
% for iy = 1:Nx-1
%     y(iy+1) = y(iy)+dx*cos(x(iy));
% end

%% Plot the Results
% Calculate the actual answer (which in this case is sin(x)
realy = sin(x);

% Plot the two results
plot(x,y, 'r--',...
    x, realy, 'b');
legend('Euler Approx', 'Analytical Soln');
title(['Number of points for approx is ', num2str(Nx)]);
% Add axis labels
xlabel('x');
ylabel('y');

% Turn grid on 
grid on