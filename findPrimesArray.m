%% findPrimesArray.m
% This program creates and displays a 5x4 array (called myArray) of random 
% integers between 1 and a maximum value. The program then counts the 
% number of prime numbers in each row of the array and displays this 
% number. The program finally displays the total number of prime numbers in
% myarray.

% Author: Jonathon Vasilak
% Date: February 11, 2020

% Clear memory
clear
% Clear Command Window
clc

%% Set parameters
% set the number of rows in myArray
row_num = 5;

% set the number of columns in myArray
col_num = 10;

% set the maximum value used in myArray
max_value = 50;
% create myArray using rowNum and colNum
my_array = randi(max_value, [row_num, col_num]);
% start the prime counter at 0
prime_count = 0;
% display the initial values of the myArray array
disp('The values of my array are: ')
disp(my_array);

%% Count the prime numbers
% Initialize a vector, primeVals, that will store the number of prime
% Values in each row
primeVals = zeros(1:row_num);

% Use a nested FOR loop to cycle through each row and each column. The
% first FOR loop cycles through each row one at a time. The second FOR loop
% cycles through each column one at a time. Using this set-up, the FOR loop
% will start in the first row and then check each column in myArray. Next,
% the loop moves to the second row and checks each column in row 2.
for irow = 1:row_num
    for icol = 1:col_num
        if isprime(my_array(irow,icol))
            prime_count = prime_count + 1;
        end
    end
    primeVals(1,irow) = prime_count;
    disp(['Row ', num2str(irow), ' has ', num2str(prime_count), ' prime values.'])
    prime_count = 0;
end
total_prime = sum(primeVals);
disp(['There are a total of ', num2str(total_prime), ' prime numbers']);
% For the current element in myArray (based on irows and icol),
        % check to see if the value is prime. If it is prime, increment the
        % prime counter by 1. If not, do nothing. 
    
    % Store the number of primes in irows in the primeVals vector.
    
    % Display the number of prime numbers in irows to the user. 
    
    % Reset the prime number counter to 0 so that we can count the number
    % of zeros in the next row. Since we stored the number of prime numbers
    % in each row in the primeVals vector, we will still know how many
    % total prime numbers there are in myArray.


%% Display primes
% Determine the total number of prime numbers in myArray by using the sum
% function. 

% Display the total number of prime numbers in myArray to the user.




