function p = logisticF(y, y0, a)
% logisticF(y, y0, a) takes the inputs to the logistic function and returns
% the p(y) value(s). The logistic function follows the equation: 
%
%       p(y) = 1/(1+exp(-(y-y0)/a))
% 
% INPUTS
%   y - single value or vector of values (1 x N)
%   y0 - parameter in the logistic function (1 x 1)
%   a - parameter in the logistic function (1 x1)
%
% OUTPUT
%   p - single value or vector depending on the size of y (1 x N)

% Calculate the value(s) of p based on the input variables
% NOTE: The use of ./ enables either a value or vectors to be input into
% the function (i.e., the code specifies element-wise division).
p = 1./(1+exp(-((y-y0)/a)));
