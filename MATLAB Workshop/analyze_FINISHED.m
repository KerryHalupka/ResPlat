% script is to analyse patient data
clear all
clc
cd('C:\Users\kerry_000\SkyDrive\ResPlat Test\Data')

save_to_csv = 1;  % could also use true instead of 1

for idx=1:4
    file_name = sprintf('inflammation-%02d.csv', idx);
    img_name = sprintf('patient_data-%02d', idx);
    
    % read in data
    patient_data=csvread(file_name);
    
    % find maximum inflammation
    max_inflammation = max(patient_data(:));
    
    % find minimum
    min_inflammation = min(patient_data(:));
    
    % find std
    std_inflammation = std(patient_data(:));
    
    % display values
    disp(['Maximum inflammation: ' num2str(max_inflammation)]);
    disp(['Minimum inflammation: ' num2str(min_inflammation)]);
    disp(['Standard deviation of inflammation: ' num2str(std_inflammation)]);
    
    % plot data
    subplot(2,2,1)
    plot(mean(patient_data,1)) %plot mean
    xlabel('Days')
    ylabel('Mean inflammation')
    title('Mean inflammation over time')
    
    %plot min
    subplot(2,2,2)
    plot(min(patient_data,[],1))
    xlabel('Days')
    ylabel('Min inflammation')
    title('Min inflammation over time')
    
    %plot max
    subplot(2,2,3)
    plot(max(patient_data,[],1))
    xlabel('Days')
    ylabel('Max inflammation')
    title('Max inflammation over time')
    
    %plot std
    subplot(2,2,4)
    plot(std(patient_data,[],1))
    xlabel('Days')
    ylabel('Std inflammation')
    title('Std inflammation over time')
    
    % save figure to file
    print(img_name, '-dpng')
    
end
