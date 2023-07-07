function [AUC_first, AUC_last, total_deprot] = DeprotonationIntegrate( ...
    O2_x,O2_y, num_scans)
%DEPROTONATIONCAL Integrates using the trapz function to calculate 
%   Accepts a matrix for the x and y raman spectrum and return the first
%   and last curve integration

% Integration of first spectrum
AUC_first = trapz(O2_x(:,1),O2_y(:,1));

% Integration of the last spectrum
AUC_last = trapz(O2_x(:,num_scans), O2_y(:,num_scans));

total_deprot = 1 - AUC_last/(AUC_first);

end

