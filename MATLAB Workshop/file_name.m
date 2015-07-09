%% loop through file names and display them on the screen 

for file_index = 1:12 % file_index will take the values 1 to 12 and execute all subsequent steps each time.
    file = sprintf('inflammation-%02d.csv',file_index); % %02d is a placeholder that will be filled in with the value file_index has at each iteration.
    % '02' stands for "use at least 2 digits", which we need in order to
    % turn '1' into '01'.
    disp(file)
end

for file_index = 99:-1:1 % we can also iterate through values in reverse order...
    file = sprintf('%d bottle(s) of beer on the wall, %d bottles of beer, take one down toss it around, %d bottles of beer on the wall',file_index,file_index,file_index-1);
    disp(file)
end