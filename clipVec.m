function vout = clipVec(v, vmin, vmax)

% Jonathon Vasilak
% This function will test all of the values of a specified vector, the
% vector's values will then be tested. If any of the vector's values are
% greater than the max, then the value will be set to vmax. Likewise, if
% any of the vector's values are less than the minimum, the value will be
% set to the vmin.

vout = v;
vout(v>vmax) = vmax;
vout(v<vmin) = vmin;