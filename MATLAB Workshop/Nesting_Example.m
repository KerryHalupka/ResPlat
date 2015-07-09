%% Example of nesting
% this script contains an example of how to nest an if statement within a
% for loop.
clear all                       %clear workspace
close all                       %close figures
clc                             % clear command history

numbers = [-4 3 2 -1 12 9];     %define some numbers
total = 0;                      %pre-define the total sum

for index = 1:6                 %define an index to loop through the numbers vector
    if numbers(index) >= 0      % check whether the number is bigger than or equal to zero
        total = total+numbers(index);   % if the number is >=0, add it to the total. If not, do nothing and move on to the next number
    end
end

disp(['sum of positive values: ', num2str(total)])      %display sum of positive numbers

% the for loop could be modified by looping directly through the numbers,
% like so:
% 
% total=0;
% for n = numbers                
%     if n >= 0      
%         total = total+n;
%     end
% end