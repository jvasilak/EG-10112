%% fortuneCookie.m
%  This program randomly chooses a "fortune" from the list of messages 
%  listed and displays that to the user each time the program is executed. 

%  Jonathon Vasilak
%  March 3, 2020

%  Clear memory
clear
%  Clear Command Window
clc

%% Set Parameters
% Create the list of messages ("fortunes") using a cell array. The use of a
% cell array allows us to have strings of different sizes as the different
% messages. This would not work with an array, unless each message had the
% same number of characters. The cell array is denoted by the curly
% brackets {}.


 message = {'Your engineering project will be an amazing success.',...
     'Spring Break will provide great relaxation.',...
     'Continue to work hard, your efforts will pay off.',...
     'The greatest risk is not taking one.',...
     'Wealth awaits you very soon.'};

% Determine the number of messages and store this value. This value will be
% used when randomly generating a message.
nMessage = length(message);

%% Choose and Display Message
% Randomly generate a message number by randomly generating a number from
% one to the number of messages.
message_index = randi(nMessage);

% Display the message by using the index to select the string out of the
% message cell array. 
disp(message{message_index});