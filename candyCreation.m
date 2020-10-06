%% candyCreation.m
% This program will randomly determine the shell color and filling of 100
% M&Ms and then find out how many M&Ms that were generated meet specific
% criteria, reporting this information to the user in the command window.

% Jonathon Vasilak
% March 3, 2020

clear
clc

%% Creates arrays
% Creates two variables, which contain all of the possible outcomes for the
% color of the M&M as well as all of the possible fillings.

color = {'yellow', 'green', 'blue', 'brown', 'orange', 'red'};
filling = {'milk chocolate', 'peanut', 'caramel', 'peanut butter', 'pretzel'};

%% Generate M&Ms
% Randomly generates the properties of 100 M&Ms using a for loop

N = 100;


for i = 1:N
selected_color(i) = color(1, randi(6));
selected_filling(i) = filling(1, randi(5));
mM = {selected_color, selected_filling};
end

%% Test M&MS
% Tests the randomly generated M&Ms to ensure they meet specified criteria
% using two for loops and switch loops
PB_count = 0;
for i = 1:N
    filling_char = selected_filling{i};
    switch filling_char
        case 'peanut butter'
        PB_count = PB_count+1;
    end
end

both_count = 0;
for i = 1:N
   filling_char = selected_filling{i};
   color_char = selected_color{i};
   switch filling_char
       case 'milk chocolate'
           switch color_char
               case 'green'
                   both_count = both_count + 1;
           end
   end
end
%% Display results
% Reports to the user how many M&Ms have peanut butter filling and how many
% M&Ms have both green shells and milk chocolate filling.

disp(['There are ', num2str(PB_count), ' M&Ms with peanut butter filling']);
disp(['There are ', num2str(both_count), ' M&Ms with both green shells and milk chocolate filling'])