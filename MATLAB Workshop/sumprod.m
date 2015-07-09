function [vsum, vprod, checksize] = sumprod(v1,v2)
%file sumprod
%this is an example of a function with two inputs (v1 and v2) and three
%outputs (vsum, vprod and checksize)
% two input numbers v1 and v2 (scalars) can be any numbers
% output vsum is the sum of v1 and v2
% output vprod is the product of v1 and v2
% checksize is a string containing info about which of sum or product is
% bigger.
%
% For example, to call this function from a script or the workspace, using the input numbers 3 and 6:
%       [my_sum, my_product, my_sizecheck]=sumprod(3,6)
% this would output the following:
%       my_sum=9
%       my_product=18
%       my_sizecheck='prod is bigger dude'

    vsum=v1+v2;
    vprod=v1*v2;
    
    if vsum>vprod
        checksize='sum is bigger yo';
    elseif vprod>vsum
        checksize='prod is bigger dude';
    else
        checksize='THEY ARE THE SAME!!! omg....';
    end
end
        