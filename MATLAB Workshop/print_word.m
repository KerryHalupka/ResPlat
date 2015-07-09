%% this script is to demonstrate that we can also loop through strings of characters. 

word = 'oxygen';

for letter_index = 1:length(word) % length(word) returns the number of elements in the string word.
   disp(word(letter_index)) % at each iteration, one letter is displayed on the screen.
end