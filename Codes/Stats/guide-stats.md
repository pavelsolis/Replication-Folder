# Stats Guide

A data appendix consists of metadata plus descriptive statistics, its purpose is to serve as a users' guide for the analysis data files (generated after cleaning and processing the original data files).
- The metadata file (Data/Metadata/metadata.docx) describes the variables in the analysis data files.
- The scripts in this folder (Codes/Stats) inspect the analysis data files (e.g. for outliers) and yield descriptive statistics for the variables used.


## Recommendations
The scripts in this folder should be elaborated *after* the ones in the Codes/Tidy folder and *before* the ones in the Codes/Analysis folder.
- The scripts in the Tidy folder generate the *analysis data files* by cleaning and processing the *original data files*.
- The scripts in the Analysis folder perform the analysis and generate the specific results.

The scripts in this folder should inspect the analysis data files (e.g. for outliers).
- For time series, plot the variables in both levels and growth rates.

For the variables in the analysis data files, the scripts in in this folder should generate:
- Summary statistics and histograms for quantitative variables.
- Relative frequency tables and charts for categorical variables.

Numbers cited in the text should be updated each time you run the codes for descriptive statistics and analysis (e.g. due to updates to the dataset). Automate the process to avoid recreating results during revisions.
- Include code to store each cited number as a text file in the Docs/Numbers folder. See the example script Codes/Extra/Temp/exnumbers.do.
- Use the \double command (defined in Docs/Settings/macros.tex) to cite the numbers in the paper and the slides.

Use a main file (e.g. data_stats.EXT) to call the necessary scripts sequentially to generate the descriptive statistics.
- List all the scripts called by such main file at the end of the README.md file.