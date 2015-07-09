%% efficient programming
% this is a script that tests the efficiency of a script with and without
% pre-allocation of variables, and with matrix algebra instead of looping

clear all % clear workspace
close all % close any figures

%% without pre-allocation
% this should be slower than with allocation, since it's less efficient

tic                                 %start clock
myMatrix=magic(1000);               %create some dummy data, a 1000x1000 matrix of numbers
for rowInd=1:size(myMatrix,1)       % loop through rows
    for colInd=1:size(myMatrix,2)   % loop through columns                   
    	myResults(rowInd, colInd)=sqrt(myMatrix(rowInd, colInd))-rand(1); %take square root and subtract a random number
    end
end
timeTaken1=toc;                     %stop clock and record time

%% with pre-allocation
% this should be faster than without allocation, since it's more efficient 

clearvars -except timeTaken1        % this will clear all the variables except for timeTaken1
tic                                 %start clock
myMatrix=magic(1000);               %create some dummy data, a 1000x1000 matrix of numbers
myResults=zeros(size(myMatrix));    %*** THIS IS THE IMPORTANT LINE ***  preallocate results matrix, same size as dummy input matrix 
for rowInd=1:size(myMatrix,1)       % loop through rows
    for colInd=1:size(myMatrix,2)   % loop through columns                   
    	myResults(rowInd, colInd)=sqrt(myMatrix(rowInd, colInd))-rand(1); %take square root and subtract a random number
    end
end
timeTaken2=toc;                     %stop clock and record time

speedRatio1 = timeTaken1/timeTaken2;
disp(['Pre-allocation of the results matrix makes the code ' num2str(speedRatio1) ' times faster than without pre-allocation'])

%% with matrix algebra
% some code can be optimised by using matlab's matrix algebra capabilities.
% in this code, instead of looping through the rows and columns to create
% my results matrix, I can use matrix algebra like this:


clearvars -except timeTaken1 timeTaken2        % this will clear all the variables except for timeTaken1
tic                                 %start clock
myMatrix=magic(1000);               %create some dummy data, a 1000x1000 matrix of numbers
%myResults=zeros(size(myMatrix));    %*** THIS IS THE IMPORTANT LINE ***  preallocate results matrix, same size as dummy input matrix 
myResults=sqrt(myMatrix)-rand(size(myMatrix)); %take square root and subtract a random number

timeTaken3=toc;                     %stop clock and record time

speedRatio2 = timeTaken1/timeTaken3;
speedRatio3 = timeTaken2/timeTaken3;
disp(['Matrix Algebra makes the code ' num2str(speedRatio2) ' times faster than without pre-allocation, and ' num2str(speedRatio3) ' times faster than with pre-allocation'])

% in conclusion, matrix algebra makes things much faster! do this wherever
% you can!!