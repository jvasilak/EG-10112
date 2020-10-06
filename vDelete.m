function vout = vDelete(v, k)
% Jonathon Vasilak
% This function will choose a specified value in the array, whose position
% is determined by k, and remove it from the array.

vout = v;
N = length(v);
for i = 1:N
   if  i == k
    vout(i) = [];  
   end
end
