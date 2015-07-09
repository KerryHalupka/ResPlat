%% script that analyses patient data

%% clean up my workspace
clear all; % clearing all variables that are still in the workspace.
close all; % closing figures.

%% Flags to control script execution
plot_flag = 0; %% set a plot flag: if 1: create plots, if 0: don't
save_flag = 0; % set a save flag: if 1: save plots, if 0: don't save plots
shift = 3; % by how much do we want to shift our data?

%% read in data
for n = 1:4 % main loop: we are looping through the files
    patient_data = csvread(sprintf('inflammation-%02d.csv',n)); % patient data is read in. 
    %02d is a place holder that gets filled by the
    % number n. 02 means that there will always be at least two digits, even
    % for numbers below 10.

%% shifting data
    patient_data=centre_shift(patient_data,shift); % we are using our own function to shift data 
    % by 'shift', which is set at the beginning of our script. The new data
    % gets reassigned to the variable patient_data.
    
%% find maximum, minimum, and standard deviation
    max_data = max(patient_data(:));
    min_data = min(patient_data(:));
    std_data = std(patient_data(:));
    
%% display these values
    disp(['Maximum inflammation: ', num2str(max_data)]);
    disp(['Minimum inflammation: ', num2str(min_data)]);
    disp(['Standard deviation: ', num2str(std_data)]);

%% plot data
    if plot_flag == 1 % if the plot_flag is set to 1, create a plot.

        % plot data
        plot(mean(patient_data,1)) % plot mean over dimension 1
        xlabel('Days'); % x-axis label
        ylabel('Mean inflammation'); % y-axis label
        title('Mean inflammation over time'); % plot title
        if save_flag == 1 % if save_flag is set to 1, save the plot that was just created.
            % save the plot: %02d is a place holder that gets filled by the
            % number n. 02 means that there will always be at least two digits, even
            % for numbers below 10.
            print(sprintf('patient_figure%02d',n),'-dpng');
        end
    end
end
