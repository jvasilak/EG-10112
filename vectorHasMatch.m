function hasMatch = vectorHasMatch(v)
% vectorHasMatch(v) returns true if and only if vector v has
% at least one pair of identical elements
% 
% INPUT
%   v - vector of values (1 x N)
%
% OUTPUT
%   hasMatch - logical variable 

% Initially set the hasMatch variable to false. This value will be changed
% if there actually is a match found. 
hasMatch = false;
% Determine the number of values in the input vector (v)
nN = length(v);
% Sort the vector using the sort function
% NOTE: After completing HW6, you could replace the sort function with your
% BubbleSort function
sv = sort(v);
% Initialize a counter (k) at 1. This will track of how many elements in
% the vector that we have tracked.
k = 1;
% Run a WHILE loop that continues as long as the number of items checked is
% less than the total number of values in the input vector (it cannot be
% equal to the number because we compare the current value with the next
% value; so if the current value is the last value, there is nothing to
% compare it to) AND we haven't found a match yet (once we find a match,
% there is no need to keep checking the vector. 
while (~hasMatch) && k < nN
    if sv(k) == sv(k+1)
        hasMatch = true;
    end
    k = k + 1;
end
    % Check to see if the current value is equal to the next value for the
    % sorted vector

        % If there is a match, change the value of hasMatch to true. This
        % changes the output variable AND ends the WHILE loop


        % If there is no match, increment the counter and go to the next
        % value