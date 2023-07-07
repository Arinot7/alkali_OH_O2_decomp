function [O2_tpoints_all, num_scans, scan_length] = DataLoader( ...
    main_file_path, single_scan_file_path)
%DATALOADER Loads different data sets
%   Outputs a data set and important variables for the program to run, but
%   removes the distracting block of code that pulls the information from
%   the Master Peroxide Data folder

% file paths need to be character arrays and not strings
main_file_path = convertStringsToChars(main_file_path);
single_scan_file_path = convertStringsToChars(single_scan_file_path);

%% Getting index length of a single scan
test_file = load([main_file_path, single_scan_file_path]);
scan_length = length(test_file(:,1));
num_scans = length(dir([main_file_path, '*.csv']));

%% Loading entire data set from folder
ds = tabularTextDatastore(main_file_path, 'FileExtensions', '.csv');

%% Outputting values
O2_tpoints_all = readall(ds);
O2_tpoints_all = table2array(O2_tpoints_all);

end