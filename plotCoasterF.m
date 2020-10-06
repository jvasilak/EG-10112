function plotCoasterF(app)
% plotCoaster.m
% Uses the coasterF function to find the position and
% velocity on a roller coaster.  Plots the position, velocity,
% or both (depending on plotChoice).
% Author: Jonathon Vasilak
% Edited: March 29, 2020

%% Set Parameters
d = 0.05;   % d (damping factor) should be between 0.05 and 0.3
tmin = 0;   % start time (seconds)
tmax = 60;  % end time (seconds)
Nt = 200;   % Number of points

doGrid = app.GridOnCheckBox.Value;   % True = Grid on for plot or False = Grid off
plotChoice = app.displayDropDown.Value;  % Determines what is shown in the figure
                 % Plots: 1-position, 2-velocity, or 3-both

%% Calculate Values
% Calculate the time points and then use coasterFunc to find the
% position and velocity at each time.

t = linspace(tmin, tmax, Nt);
[y, v] = coasterF(t, app.distanceSlider.Value);  % position (y) and velocity (v) found using
                          % user-defined function, coasterFunc

%% Plot Position and/or Velocity
% Use a switch statement with the previously defined plotChoice to
% plot either position, velocity, or both in the figure window.

switch plotChoice
    case 'Position'  % plot the function (position) only
        plot(app.PlotAxes, t, y)
        ylabel(app.PlotAxes, 'Height (ft)')
    case 'Velocity'  % plot the derivative (velocity) only
        plot(app.PlotAxes, t,v)
        ylabel(app.PlotAxes, 'Velocity (mph)')
    case 'Both'  % plot both (position and velocity)
        plot(app.PlotAxes, t, y, t, v, '--');
        ylabel(app.PlotAxes, 'Height or Velocity')
        legend(app.PlotAxes, 'Height (ft)', 'Velocity (mph)')
end
xlabel(app.PlotAxes, 'Time (sec)')  % same x label for all 3 plots
                      % axis is left to autoscale
                     
% only adds a grid to the plot if doGrid = true
if doGrid      
    grid (app.PlotAxes, 'on')
else
    grid (app.PlotAxes, 'off')
end