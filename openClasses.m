%% openClasses.m
% Tests all of the classes in the openClassesData file which is loaded into
% the program and then reports to the user which classes have 5 or more
% seats available in them

% Jonathon Vasilak
% April 8, 2020

clear
clc

%% Load Data
% Loads the class data
x = load('openClassesData.mat');

%% Find and Display Classes
% Finds which classes have more than five available seats in them and lists
% them in the command window

for i = 1:10
if x.classes(i).seats(1) - x.classes(i).seats(2) >= 5
    disp(x.classes(i).classTitle)
end
end
