function [x1, x2, rootType] = quadFunc(a,b,c)
% Jonathon Vasilak
% February 28, 2020
% This function will take inputs for the coefficients of the quadratic
% formula and then solve the roots of the formula based on the coefficients
% It will also evaluate the value of the discriminant to determine whether
% the roots are real or imaginary numbers
% Quadratic formula: ax^2+bx+c=0
% Discriminant: b^2-4ac
% x = -b(+/-)sqrt(b^2-4ac)/2a

x1 = (-b + sqrt(b^2-4*a*c))/(2*a);
x2 = (-b - sqrt(b^2-4*a*c))/(2*a);
if b^2-4*a*c > 0
   rootType = 'Two real roots';
elseif b^2-4*a*c == 0
    rootType = 'Two equal roots';
else
    rootType = 'Two imaginary roots';
end
