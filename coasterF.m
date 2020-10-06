function [pos, vel] = coasterF(t, d)
% [pos, vel] = coasterF(t, d)
% coasterF calculates the y-position (pos in ft) and the
% y-velocity (vel in miles/hr) of a rider on a new rollar coaster.
% The value d, the damping factor, determines the 
% number and height of oscillations.
% 
% Jonathon Vasilak
% March 29, 2020

% wn, wd, and sigma are constants for this particular mathematical model. 
wn = 0.5;
wd = wn*sqrt(1 - d^2);
sigma = d*wn;

% pos is the funciton that calculates the positon in the y direction. It is
% dependent on the previously defined wn, wd, sigma, and t.
pos = 150*(1 - exp(-sigma*t).*(cos(wd*t) + (sigma/wd)*sin(wd*t)));

% vel is the funciton that calculates the velocity in the y direction. It is
% dependent on the previously defined wn, wd, sigma, and t.
vel = 2000*(sigma*exp(-sigma*t).*((sigma^2/wd)*sin(wd*t)+wd*sin(wd*t)));