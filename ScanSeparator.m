function [O2_tpoint_x, O2_tpoint_y] = ScanSeparator(scan_length, ...
    num_scans, O2_tpoints)
%SCANSEPARATOR Separates scans into x and y arrays from full data set
%   Data sets come in one array with all of the scans piled on top of each
%   other, this function separates out all of the scans from the raman
%   spectroscopy data directory.

O2_tpoint_x = zeros(scan_length, num_scans);
O2_tpoint_y = zeros(scan_length, num_scans); 
start_sep = 1;
scan_length_store = scan_length;

for i = 1:num_scans

    O2_tpoint_x(:,i) = O2_tpoints(start_sep:scan_length,1);
    O2_tpoint_y(:,i) = O2_tpoints(start_sep:scan_length,2);

    start_sep = scan_length + 1;
    scan_length = scan_length + scan_length_store;

end

end

