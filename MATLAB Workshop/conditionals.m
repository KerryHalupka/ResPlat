%% script for testing whether a number is larger than 5, larger than 10, or neither

num = 29; % choose your number you want to test.

if num > 5 % test if the number is larger than 5. If it is, the following lines are executed. If not, we'll jump straight to 'end'
    % note: in the case of multiple conditions on the same level, only the
    % first condition that is matched is relevant. All subsequent 'else if'
    % statements will be skipped.
    disp('number is larger than 5')
    if num > 10 % test if the number is also larger than 10. This statement is
        % nested inside the first conditional, which is why this condition
        % will also be tested.
        disp('number is also larger than 10')
    end
else % gets executed if the number is not larger than 5.
    disp('neither')
end