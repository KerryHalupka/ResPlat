function [ktemp1, ktemp2] =fahr_to_kelvin(ftemp1, ftemp2)
% file converting Fahrenheit to Kelvin
%this function takes two temperatures in farenheit as inputs (ftemp1 and
%ftemp2) and returns their values in kelvin (ktemp1 and ktemp2
%respectively)
    ktemp1 = ((ftemp1-32)*(5/9))+273.15;
    ktemp2 = ((ftemp2-32)*(5/9))+273.15;
end
