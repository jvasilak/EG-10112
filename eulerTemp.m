%% eulerTemp.m
% Using Euler's method, this program will approximate a room's temperature
% as a function of time using the following formula
% dy/dt = k(y-T)


% Jonathon Vasilak
% February 12, 2020

clear
clc

%% Define Parameters
% Defines the variables that are needed to calculate the temperature.

k = -0.028;
T = 60;

Nt = 180;
tmin = 1;
tmax = 180;


y = zeros(1,Nt);
y(1) = 100;
t = linspace(tmin, tmax, Nt);
%% Calculate Temperature
% Uses a for loop and Euler's method to find the temperature of the room.
for it = 2:tmax
    y(it) = y(it-1)-k*(y(it)-T);
end
%% Plot function
% Plots the function
plot(t,y);
grid on
xlabel('Time (minutes)')
ylabel('Temperature (F)')