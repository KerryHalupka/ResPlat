%% in this script we want to find out whether we want to take an umbrella. 
% we only want to take an umbrella if it is both raining and we want to go
% out. 

raining = 1;
go_out = 1;

if raining && go_out % '&&' is returning 'true' if its both raining and we want to go out.
    disp('take an umbrella!')
else 
    disp('do not worry')
end

%% An alternative scenario would be to test if we want to eat (we eat if we are hungry, bored, or both).
% We'd use || to test an or-statement