% Trevor Arino, Uranyl alkali metal monomer manuscript, December 20, 2022

% Script to plot time points taken by raman spectroscopy 

close, clear, clc;

%% Setting up correct file paths

% Change directory pathing in this block of code to view different data
% sets

main_file_path(1,:) = "Master Peroxide Data\Li\Li1to2\TA113 Li+ 1_2\";
main_file_path(2,:) = "Master Peroxide Data\Li\Li1to2\TA115 Li+ 1_2\";
main_file_path(3,:) = "Master Peroxide Data\Li\Li1to2\TA116 Li+ 1_2\";
main_file_path(4,:) = "Master Peroxide Data\Li\Li1to3\TA088 Li+ 1_3\";
main_file_path(5,:) = "Master Peroxide Data\Li\Li1to3\TA125 Li+ 1_3\";
main_file_path(6,:) = "Master Peroxide Data\Li\Li1to3\TA127 Li+ 1_3\";
main_file_path(7,:) = "Master Peroxide Data\Na\Na1to2\TA082 Na+ 1_2\";
main_file_path(8,:) = "Master Peroxide Data\Na\Na1to2\TA106 Na+ 1_2\";
main_file_path(9,:) = "Master Peroxide Data\Na\Na1to2\TA108 Na+ 1_2\";
main_file_path(10,:) = "Master Peroxide Data\Na\Na1to3\TA083 Na+ 1_3\";
main_file_path(11,:) = "Master Peroxide Data\Na\Na1to3\TA107 Na+ 1_3\";
main_file_path(12,:) = "Master Peroxide Data\Na\Na1to3\TA109 Na+ 1_3\";
main_file_path(13,:) = "Master Peroxide Data\K\K1to2\TA073 K+ 1_2\";
main_file_path(14,:) = "Master Peroxide Data\K\K1to2\TA102 K+ 1_2\";
main_file_path(15,:) = "Master Peroxide Data\K\K1to2\TA104 K+ 1_2\";
main_file_path(16,:) = "Master Peroxide Data\K\K1to3\TA074 K+ 1_3\";
main_file_path(17,:) = "Master Peroxide Data\K\K1to3\TA103 K+ 1_3\";
main_file_path(18,:) = "Master Peroxide Data\K\K1to3\TA105 K+ 1_3\";
main_file_path(19,:) = "Master Peroxide Data\Rb\Rb1to2\TA077 Rb+ 1_2\";
main_file_path(20,:) = "Master Peroxide Data\Rb\Rb1to2\TA121 Rb+ 1_2\";
main_file_path(21,:) = "Master Peroxide Data\Rb\Rb1to2\TA122 Rb+ 1_2\";
main_file_path(22,:) = "Master Peroxide Data\Rb\Rb1to3\TA078 Rb+ 1_3\";
main_file_path(23,:) = "Master Peroxide Data\Rb\Rb1to3\TA123 Rb+ 1_3\";
main_file_path(24,:) = "Master Peroxide Data\Rb\Rb1to3\TA124 Rb+ 1_3\";
main_file_path(25,:) = "Master Peroxide Data\Cs\Cs1to2\TA075 Cs+ 1_2\";
main_file_path(26,:) = "Master Peroxide Data\Cs\Cs1to2\TA094 Cs+ 1_2\";
main_file_path(27,:) = "Master Peroxide Data\Cs\Cs1to2\TA099 Cs+ 1_2\";
main_file_path(28,:) = "Master Peroxide Data\Cs\Cs1to3\TA069 Cs+ 1_3\";
main_file_path(29,:) = "Master Peroxide Data\Cs\Cs1to3\TA098 Cs+ 1_3\";
main_file_path(30,:) = "Master Peroxide Data\Cs\Cs1to3\TA101 Cs+ 1_3\";

single_scan_path(1,:) = "TA113_LiOH_H2O2_t1.CSV";
single_scan_path(2,:) = "TA115_LiOH_H2O2_t1.CSV";
single_scan_path(3,:) = "TA116_LiOH_H2O2_t1.CSV";
single_scan_path(4,:) = "TA088_LiOH_H2O2_t1.CSV";
single_scan_path(5,:) = "TA125_LiOH_H2O2_t1.CSV";
single_scan_path(6,:) = "TA127_LiOH_H2O2_t1.CSV";
single_scan_path(7,:) = "TA082_Na_H2O2_t1.CSV"; %accidental naming error
single_scan_path(8,:) = "TA106_NaOH_H2O2_t1.CSV";
single_scan_path(9,:) = "TA108_NaOH_H2O2_t1.CSV";
single_scan_path(10,:) = "TA083_Na_H2O2_t1.CSV"; %accidental naming error
single_scan_path(11,:) = "TA107_NaOH_H2O2_t1.CSV";
single_scan_path(12,:) = "TA109_NaOH_H2O2_t1.CSV";
single_scan_path(13,:) = "TA073_KOH_H2O2_t1.CSV";
single_scan_path(14,:) = "TA102_KOH_H2O2_t1.CSV";
single_scan_path(15,:) = "TA104_KOH_H2O2_t1.CSV";
single_scan_path(16,:) = "TA074_KOH_H2O2_t1.CSV";
single_scan_path(17,:) = "TA103_KOH_H2O2_t1.CSV";
single_scan_path(18,:) = "TA105_KOH_H2O2_t1.CSV";
single_scan_path(19,:) = "TA077_RbOH_H2O2_t1.CSV";
single_scan_path(20,:) = "TA121_RbOH_H2O2_t1.CSV";
single_scan_path(21,:) = "TA122_RbOH_H2O2_t1.CSV";
single_scan_path(22,:) = "TA078_RbOH_H2O2_t1.CSV";
single_scan_path(23,:) = "TA123_RbOH_H2O2_t1.CSV";
single_scan_path(24,:) = "TA124_RbOH_H2O2_t1.CSV";
single_scan_path(25,:) = "TA075_CsOH_t1.CSV"; % accidental naming error
single_scan_path(26,:) = "TA094_CsOH_t1.CSV"; % accidental naming error
single_scan_path(27,:) = "TA099_CsOH_H2O2_t1.CSV";
single_scan_path(28,:) = "TA069_CsOH_t2.CSV"; % accidental naming error
single_scan_path(29,:) = "TA098_CsOH_t1.CSV"; % accidental naming error
single_scan_path(30,:) = "TA101_CsOH_t1.CSV"; % accidental naming error

%% Generate Legend for files

file_legend = GenerateFileLegend();

%% Loading Data

% Creating the cell array for multi-dimensional matrix storage
O2_tpoints_all = cell(1,length(single_scan_path(:,1)));

% Preallocating other arrays for reduced computation time
num_scans = zeros(1,length(single_scan_path(:,1)));
scan_length = zeros(1,length(single_scan_path(:,1)));

for i = 1:length(single_scan_path(:,1))

    [O2_tpoints_all{1,i}, num_scans(1,i), scan_length(1,i)] = DataLoader( ...
        main_file_path(i,:), single_scan_path(i,:));

end

clear i, clear main_file_path, clear single_scan_path

%% Separating data variables from complete folder import

O2_x = cell(1,length(scan_length(1,:)));
O2_y = cell(1,length(scan_length(1,:)));

for i = 1:length(scan_length(1,:))

    [O2_x{1,i}, O2_y{1,i}] = ScanSeparator(scan_length(1,i), num_scans(1,i), ...
        O2_tpoints_all{1,i});

end

clear O2_tpoints_all, clear i

%% Scan integration

% preallocating variables for speed
AUC_first = zeros(1,length(scan_length(1,:)));
AUC_last = zeros(1,length(scan_length(1,:)));
total_deprot = zeros(1,length(scan_length(1,:)));

for i = 1:length(scan_length(1,:))

    [AUC_first(1,i), AUC_last(1,i), ...
        total_deprot(1,i)] = DeprotonationIntegrate(O2_x{1,i}, ...
        O2_y{1,i}, num_scans(1,i));

end

clear i
%% Block of code used to plot one spectrum

% Change this variable to a different index corresonding to the desired
% data set to plot
data_set_number = 18;

% Pass in the cell data set you wish to plot
SingleSpectrumPlot(O2_x{1,data_set_number}, ...
    O2_y{1,data_set_number}, file_legend{data_set_number,1})

clear data_set_number

%% Averaging deprotonation based on experiment

% preallocating variables for speed
deprot_avg = zeros(1,10);

%Li 1:2
deprot_avg(1,1) = mean(total_deprot(1,1:3));

%Na 1:2
deprot_avg(1,2) = mean(total_deprot(1,7:9));

%K 1:2
deprot_avg(1,3) = mean(total_deprot(1,13:15));

%Rb 1:2
deprot_avg(1,4) = mean(total_deprot(1,19:21));

%Cs 1:2
deprot_avg(1,5) = mean(total_deprot(1,25:27));

%Li 1:3
deprot_avg(1,6) = mean(total_deprot(1,5:6));

%Na 1:3
deprot_avg(1,7) = mean(total_deprot(1,11:12));

%K 1:3
deprot_avg(1,8) = mean(total_deprot(1,17:18)); % removed TA105

%Rb 1:3
deprot_avg(1,9) = mean(total_deprot(1,22:24));

%Cs 1:3
deprot_avg(1,10) = mean(total_deprot(1,29:30));

%% Calculating standard deviation deprotonation based on experiment

% preallocating variables for speed
deprot_std = zeros(1,10);

%Li 1:2
deprot_std(1,1) = std(total_deprot(1,1:3));

%Na 1:2
deprot_std(1,2) = std(total_deprot(1,7:9));

%K 1:2
deprot_std(1,3) = std(total_deprot(1,13:15));

%Rb 1:2
deprot_std(1,4) = std(total_deprot(1,19:21));

%Cs 1:2
deprot_std(1,5) = std(total_deprot(1,25:27));

%Li 1:3
deprot_std(1,6) = std(total_deprot(1,5:6));

%Na 1:3
deprot_std(1,7) = std(total_deprot(1,11:12));

%K 1:3
deprot_std(1,8) = std(total_deprot(1,17:18)); % removed TA105
% applied correction factor for instrument DAQ issue with this set

%Rb 1:3
deprot_std(1,9) = std(total_deprot(1,22:24));

%Cs 1:3
deprot_std(1,10) = std(total_deprot(1,29:30));

%% Creating the bar plot

x = 1:5;

figure('Name', '1:2 XOH:H2O2 Deprotonation')
b1to2 = bar(deprot_avg(1,x));
hold on
er1to2 = errorbar(1:5, deprot_avg(1,x), ...
    deprot_std(1,x), deprot_std(1,x));
er1to2.Color = [0 0 0];
er1to2.LineStyle = 'none';
hold off
set(gca, 'xticklabel', {'Li', 'Na', 'K', 'Rb', 'Cs'});
xlim([0.5 5.5])
ylim([0 1])
title('1:2 XOH:H2O2 Deprotonation')
subtitle('$\frac{AUC_{last}}{AUC_{first}}$', ...
    'Interpreter','latex', 'FontSize', 14)
b1to2.FaceColor = 'flat';
b1to2.EdgeColor = 'none';
% Setting the colors of the bars in the graph using RGB values
b1to2.CData(1,:) = [0.9294 0.4902 0.1922]; %Li
b1to2.CData(2,:) = [0 0.6902 0.9412]; %Na
b1to2.CData(3,:) = [0.4392 0.1882 0.6275]; %K
b1to2.CData(4,:) = [0.1216 0.3059 0.4745]; %Rb
b1to2.CData(5,:) = [0.4392 0.6784 0.2784]; %Cs
box off

x = 6:10;

figure('Name', '1:3 XOH:H2O2 Experiments')
b1to3 = bar(deprot_avg(1,x));
hold on
er1to3 = errorbar(1:5, deprot_avg(1,x), ...
    deprot_std(1,x), deprot_std(1,x));
er1to3.Color = [0 0 0];
er1to3.LineStyle = 'none';
hold off
set(gca, 'xticklabel', {'Li', 'Na', 'K', 'Rb', 'Cs'});
xlim([0.5 5.5])
ylim([0 1])
title('1:3 XOH:H2O2 Experiments')
subtitle('$\frac{AUC_{last}}{AUC_{first}}$', ...
    'Interpreter','latex', 'FontSize', 14)
b1to3.FaceColor = 'flat';
b1to3.EdgeColor = 'none';
% Setting the colors of the bars in the graph using RGB values
b1to3.CData(1,:) = [0.9294 0.4902 0.1922]; %Li
b1to3.CData(2,:) = [0 0.6902 0.9412]; %Na
b1to3.CData(3,:) = [0.4392 0.1882 0.6275]; %K
b1to3.CData(4,:) = [0.1216 0.3059 0.4745]; %Rb
b1to3.CData(5,:) = [0.4392 0.6784 0.2784]; %Cs
box off

clear x

%% Rate of peroxide evolution plot

EvolutionGraph("Master Peroxide Data\" + ...
    "Peroxide Evolution\1_2_peroxide_evolution.csv");

% copy everything below this into the EvolutionGraph function

%% Reading the data into MatLab

filepath = "Master Peroxide Data\" + ...
    "Peroxide Evolution\1_2_peroxide_evolution.csv";

filepath = convertStringsToChars(filepath);

data_table = readtable(filepath, 'ReadVariableNames', false);

%% Sorting the data into cells

data = cell(1,15);

% Sorting the peroxide evolution data into a cell.
for i = 1:15

    % Long way to do things, but an easy way to make sure the arry is a of
    % type double
    temp_array = table2array(data_table(:,i));

    data{1,i} = temp_array;

    % removing the NaNs
    data{1,i} = rmmissing(data{1,i});

end

% starting concentration of H2O2 based on May's calculations in mol/L, the
% first number is the 1 to 2 and the second is 1 to 3
H2O2_Initial_y = [4.20 5.4]; 

% starting concentration of XOH based on May's calculations in mol/L, the
% first number is 1 to 2 and the second number is 1 to 3
XOH_Initial_y = [2.3 1.8];

% starting ln(AUC) value
% first number is 1 to 2, second number is 1 to 3
H2O2_Initial_x = [0 0];

% starting ln(AUC) value
% first number is 1 to 2, second number is 1 to 3
XOH_Initial_x = [0 0];

% Finding the x-values based on the average

counter = 2;
temp2 = zeros(1,5);

for i = 1:5

    temp = data{1,counter};
    temp2(1,i) = temp(1,1);

    counter = counter + 3;

end

H2O2_Initial_x(1,1) = mean(temp2);



