% read in data
clear all
clc
cd('Data')
patient_data=csvread('inflammation-01.csv');

for day=1:2:size(patient_data,2)      % variable containing day number
    daysum=sum(patient_data(:,day));        % sum over all patients
    disp(['sum on day ' num2str(day) ': ' num2str(daysum)]);        % display sum
end
