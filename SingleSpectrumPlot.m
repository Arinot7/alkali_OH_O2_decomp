function SingleSpectrumPlot(O2_x_cell_matrix, O2_y_cell_matrix, ...
    file_legend_idx)
%SINGLESPECTRUMPLOT Function plots a single raman spectrum data set
%   Pass in one cell containing a raman spectrum desired to plot and this
%   function will generate the raman plot

figure("Name",file_legend_idx)
plot(O2_x_cell_matrix(:,:),O2_y_cell_matrix(:,:), 'LineWidth', 1);
title(file_legend_idx)
xlim([750 950])
ylim([0 3000])
xlabel("Wavenumber [cm^{-1}]")
ylabel("Intensity")
set(gca, "xdir", "reverse")
box off

end

