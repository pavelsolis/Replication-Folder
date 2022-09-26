# Stats Guide

A data appendix consists of a metadata plus descriptive statistics, its purpose is to serve as a users' guide for the analysis data files.
- The metadata.docx file (Data -> Metadata) describes the variables in the analysis data files.
- The scripts in this folder (Codes -> Stats) inspect the analysis data files (e.g. for outliers) and yield descriptive statistics of the variables used.


## Recomendations
The scripts in this folder should be prepared after the ones in the Tidy folder and before the ones in the Analysis folder.
- The scripts in the Codes -> Tidy folder generate the *analysis data files* by cleaning and processing the *original data files*.
- The scripts in the Codes -> Analysis folder perform the analysis and generate the specific results.

Include lines of code to inspect the analysis data files (e.g. for outliers).
- For time series, plot the variables in both levels and growth rates.

For the variables in the analysis data files, the scripts in the Stats folder should generate:
- Summary statistics and histograms for quantitative variables.
- Relative frequency tables and charts for categorical variables.

Use a main file (e.g. data_stats.EXT) to call the scripts sequentially to generate the descriptive statistics.
- List all the scripts called by such main file at the end of the README.md file.