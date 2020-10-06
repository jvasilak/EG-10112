function vout = vInsertAfter(v,x,k)
% Jonathon Vasilak
% Inserts a specified value (x) into a specified array (v) after 
% k numbers of the array. This function utilizes a for loop and an if
% statement to ensure it selects the correct spot to add the number.

vout = v;
N = length(vout);
for i = 1:N
   if i == k
       vout(i+1) = x;
   end
end
