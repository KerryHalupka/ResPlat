% This is an example of an if statement, used to check whether the user
% should take an umbrella if they leave the house

raining = 1;    % 1 means it's raining, 0 means it isn't
go_out = 1;     %1 means you're going outside, 0 means you're staying in

if raining && go_out  %if you're going autside and it's raining...
    disp('take an umbrella!')
else                  %otherwise...  
    disp('do not worry')
end