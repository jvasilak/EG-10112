%% ImprovingGuessing.m
% This program will simulate a guessing game where the user is told to
% guess a random integer between 1 and 20. The program determines that
% number and prompts the user to guess the number. Then the program gives
% the user feedback regarding whether the user correctly guessed the
% number, guessed a number too high, or if they guessed a number too low.
% The program will repeat the guessing game until the user wants to quit
% it.

% Jonathon Vasilak
% February 19, 2020

% Clear Memory
clear

% Clear command window
clc

%% Define Parameters
% Defines the variables needed to start the guessing game.
maxnumber = 20;
number = randi(20);
correct = 0;
disp(['I am thinking of a number between 1 and ', num2str(maxnumber)]);
number_of_tries = 0;
again = 1;
number_games = 0;
Array = [1,number_games];
%% Determine if the answer is correct
% Uses if and while loops to detemine if the number guessed is the correct
% number, reports to the user whether this guess is correct or if it is
% higher or lower than the number the user guessed.
while again ~= 0
    while correct == 0
        user_guess = input('Enter your guess here: ');
        
        if user_guess == number
            disp('Correct!');
            disp(['You guessed correctly that the number is ', num2str(number),'.']);
            correct = 1;
        elseif user_guess > number
            disp('Too high');
            disp('Try again!');
            
        elseif user_guess < number
            disp('Too Low');
            disp('Try again!');
            
        end
        number_of_tries = number_of_tries + 1;
    end
    correct = 0;
    number_games = number_games + 1;
    Array(1,number_games) = number_of_tries;
    number_of_tries = 0;
    again = input('Press 1 to play again or press 0 to quit: ');
end

%% Display results to the user
% After the conclusion of the game, the program reports what the average
% amount of tries it took the user to guess the correct number and the
% number of rounds they played

average_tries = sum(Array)/number_games;
disp(['You played ', num2str(number_games), ' games and took an average of ']);
disp([num2str(average_tries), ' tries to guess the correct number.']);
