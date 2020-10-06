function sout = vrotate(v,k)
% Jonathon Vasilak
% This program will take a string and then rotate the components of the
% string the amount of times the user specifies. The user can also
% determine the direction by flipping the sign of the value k.
% Positive k: components shift to the right
% Negative k: components shift to the left

sout = v;
size = length(sout);
if k > 0
    for ik = 1:k
        for i = 2:size
            sout(i) = v(i-1);
            sout(1) = v(size);
        end
        v = sout;
    end
elseif k < 0
    for ik = 1:abs(k)
       for i = 2:size
           sout(i-1) = v(i);
           sout(size) = v(1);
       end
       v = sout;
    end
end