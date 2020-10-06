%% usingSubPlots.m
%  This program demonstrates how to use MATLAB's 'figure' command
%  and 'subplot' command
%       The figure command opens up a new figure window.
%       The subplot command enables putting multiple plots in one figure
%       window.
% Jonathon Vasilak
% March 31, 2020

%  Clear memory
clear;
%  Clear Command Window
clc;
%  Close figures
close all;

%% Create arrays
% Create an array of values for theta from 0 to 360 degrees
npts = 300; % number of points
thetaMin = 0; % minimum value for theta in degrees
thetaMax = 360; % maximum value for theta in degrees
thetaArray = linspace(thetaMin,thetaMax,npts);

% Create an array for sine
sinArray = sind(thetaArray);
% Create an array for cosine
cosArray = cosd(thetaArray);
% Create an array for tangent
tanArray = tand(thetaArray);
% Create an array for cotangent
cotArray = cotd(thetaArray);

%% Plots
% This command opens a new figure window
% Note the title of this figure is "Figure 1"
figure;
% If we type it in again, it opens a second figure window
% Note the title of this figure is "Figure 2"
figure;

% Since Figure 2 was the last figure window open, it is the "active"
% axes or figure window. If we issue a plot command the plot will go 
% to Figure 2
plot(thetaArray,sinArray);
xlabel('Degrees');
ylabel('sin(theta)');
title('sine');

% If we want to send a plot to Figure 1, we need to make it the active
% axes. To do so we type figure(1). Note to make Figure 2 the active
% axes, we would type figure(2).
figure(1);
% Now Figure 1 is active.  We will send a plot to this axes.
plot(thetaArray,cosArray);
xlabel('Degrees');
ylabel('cos(theta)');
title('cosine');

%% Now clear the figure windows
% Open up a 3rd figure window
figure;
% We can divide the figure window into different axes. MATLAB uses the
% format of rows, columns.  The syntax is subplot(# of rows, # of columns,
% which subplot is active).
% Issue the subplot(2,1,1): 2 rows, 1 column, the last 1 means that row 1,
% column 1 is the active axes
subplot(2,1,1);
plot(thetaArray,sinArray);
xlabel('Degrees');
ylabel('sin(theta)');
title('sine');
% Now make the 2nd row the active subplot axes
% Issue the subplot(2,1,2): 2 rows, 1 column, the last 2 means that row 2,
% column 1 is active axes
subplot(2,1,2);
plot(thetaArray,cosArray);
xlabel('Degrees');
ylabel('cos(theta)');
title('cosine');

%% Open a 4th figure window
% This will have 4 subplots
% Open up a 3rd figure window
figure;
% We can divide the figure window into different axes. MATLAB uses the
% format of rows, columns.  The syntax is subplot(# of rows, # of columns,
% which subplot is active axes).
% Issue the subplot(2,2,1): 2 rows, 2 columns, the last 1 means that row 1,
% column 1 is active axes
subplot(2,2,1);
plot(thetaArray,sinArray);
xlabel('Degrees');
ylabel('sin(theta)');
title('sine');
% Issue the subplot(2,2,2): 2 rows, 2 columns, the last 2 means that row 1,
% column 2 is active axes
subplot(2,2,2);
plot(thetaArray,cosArray);
xlabel('Degrees');
ylabel('cos(theta)');
title('cosine');
% Issue the subplot(2,2,3): 2 rows, 2 columns, the last 3 means that row 2,
% column 1 is active axes
subplot(2,2,3);
plot(thetaArray,tanArray);
xlabel('Degrees');
ylabel('tan(theta)');
title('tangent');
% Issue the subplot(2,2,4): 2 rows, 2 columns, the last 4 means that row 2,
% column 2 is active axes
subplot(2,2,4);
plot(thetaArray,cotArray);
xlabel('Degrees');
ylabel('cot(theta)');
title('cotangent');

