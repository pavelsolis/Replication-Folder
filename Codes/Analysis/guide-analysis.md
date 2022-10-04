# Analysis Guide

The purpose of the codes in this folder (Codes/Analysis) is to perform the analysis and generate the specific results.


## Recommendations
The codes in this folder should be elaborated after the ones in the Codes/Stats folder, which generate the descriptive statistics for the variables used in the analysis.

Add comments to the code indicating the commands that generate specific results.

If possible, make a standalone script for all the figures.
- If you use different platforms (e.g. R, Stata) to generate the figures, do a standalone script for each platform.
- Start each figure by calling the relevant analysis data file and generate the figure directly from it, so that you do not need to run a large block of code (e.g. to clean original data files) each time you want to update a figure.
- As long as it applies, do the same for tables.

Numbers cited in the text should be updated each time you run the codes for descriptive statistics and analysis (e.g. due to updates to the dataset). Automate the process to avoid recreating results during revisions.
- Include code to store each cited number as a text file in the Docs/Numbers folder. See the example script Codes/Extra/Temp/exnumbers.do.
- Use the \double command (defined in Docs/Settings/macros.tex) to cite the numbers in the paper and the slides.

Use a main file (e.g. data_analysis.EXT) to call the necessary scripts sequentially to generate the results.
- List all the scripts called by such main file at the end of the README.md file.
- If you wish, data_analysis.EXT can call the main files in the Codes/Tidy and Codes/Stats folders.

An example file data_analysis.do is included in this folder.
- To reduce the number of extra files included in the repository, data_analysis.do assumes that scripts data_clean.do, data_stats.do, figures.do, regressions.do exist in their respective subfolders.