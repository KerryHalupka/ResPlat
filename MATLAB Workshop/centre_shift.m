function [shifted_data]=centre_shift(input_data, desired_mean)
   % this function takes a data matrix or vector (input_data) as an input
   % and shifts the entire matrix so that the mean is something else
   % (desired_mean).
   % the output of this function is the new matrix (shifted_data) with the
   % desired mean.
   % if the input matrix is a string instead of numbers, the code will
   % throw an error.
   
    if ~isnumeric(input_data) %if data is numbers, don't throw error, otherwise, throw error
        error('Error. Invalid data type. input data must be numeric.')
    end
   shifted_data=input_data-mean(input_data(:))+desired_mean;
end