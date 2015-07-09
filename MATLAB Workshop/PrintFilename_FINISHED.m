% loop to print names of data files

for idx = 1:4
    file_name = sprintf('inflammation-%02d.csv', idx);
    disp(file_name);
end
