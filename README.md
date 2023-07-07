# Trevor_Arino_UCB_LBNL

Peroxide Deprotonation Raman Spectroscopy Analysis
==================================================

This folder contains a MatLab (.m) program and function files for calculating peroxide deprotonation based on AUC of raman spectroscopy peaks.

Lead author: Trevor Arino
Other users: Dr. May Nyman and Dr. Ana Arteaga

This program was written in MatLab 2022a

Files
-----

* Main function that loads file names according to the naming convention of gathered raman spectrums in 2019. (PeroxideDecomp.m)
* Supporting function that builds file path names from strings, searches for the files in the Master Peroxide Data folder, and reads the .CSV files into MatLab. Do not change file names without caution. (DataLoader.m)
* Supporting funciton that finds the area under the curve of the first and last raman scan of a given data set and calculates the total deprotonation for a single experiment. (DeprotonationIntegrate.m)
* Supporting function generates a legend from experiment codes in Trevor Arino's lab notebook and passes them to plots generated in the main script. (GenerateFileLegend.m)
* Supporting function separates the main data structure (cell array) "O2_tpoints_all" into x and y data points for easy manipulation. (ScanSeparator.m)
* Supporting function that accepts and plots a single raman experiment. (SingleSpectrumPlot.m)

Last updated December 24, 2022
