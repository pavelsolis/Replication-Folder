# Codes Guide

All scripts used to generate the research results are distributed in the following subfolders.
- The scripts in the Codes/Tidy subfolder clean and process the *original data files* into the *analysis data files*, which are then used to generate the results.
- A data appendix serves as a users' guide for the *analysis data files* and consists of metadata plus descriptive statistics.
	- The Data/Metadata/metadata.docx file describes the variables in the *analysis data files*.
	- The scripts in the Codes/Stats subfolder inspect the *analysis data files* (e.g. for outliers) and yield descriptive statistics for the variables used.
- The scripts in the Codes/Analysis subfolder use the *analysis data files* to perform the analysis and generate the specific results.


## General Recommendations
Use relative paths based on the structure of the main folder, so that the codes run regardless of where the main folder is located.

When possible, write directory paths to be independent of the platform used.
- For example, see `fullfile` in Matlab, `file.path` in R and `os.path.join` in Python.

In each subfolder, break tasks into scripts and use main files to call the scripts sequentially.
- For example, data_clean.EXT for the data files, data_stats.EXT for the descriptive statistics, and data_analysis.EXT for the results.
	- If the main files are written in the same software, data_analysis.EXT could in turn call data_clean.EXT and data_stats.EXT.
	- See the example script Codes/Analysis/data_analysis.do, which *assumes* that the scripts data_clean.do, data_stats.do, figures.do, regressions.do exist in their respective subfolders to reduce the number of extra files included in the repository.
- List all the scripts called by each main file at the end of the README.md file.

Code in a way that the scripts are agnostic to the sample size so that no additional coding is necessary when you update the datasets.

Numbers cited in the text should be updated each time you run the codes for descriptive statistics and analysis to avoid recreating results during revisions.
- For example, when a dataset is updated, cited numbers may change.
- To automate the process, include code to store each cited number as a text file in the Docs/Numbers folder. See the example script Codes/Extra/Temp/exnumbers.do.
- Use the \double command (defined in Docs/Settings/macros.tex) to cite the numbers in the paper and the slides.

Use Git branches when editing code.
- Branches allow you to test changes in the codes while keeping current workable versions.
- See [here](https://github.com/pavelsolis/Git-GitHub-Primer#driessens-branching-model) for an effective Git branching model adapted to a research project.


## Recommendations for Tidy Subfolder
As much as possible, avoid manual changes to the original data files.
- Ideally, all steps should be programmed. 
- Report any necessary manual changes to a data file in the respective entry in Data/Metadata/metadata.docx so that a user can repeat the same steps.


## Recommendations for Stats Subfolder
The scripts in this subfolder should be elaborated *after* the ones in the Codes/Tidy subfolder and *before* the ones in the Codes/Analysis subfolder.

For the variables in the analysis data files, the scripts in this subfolder should:
- Inspect for outliers.
- Plot the variables in both levels and growth rates for time series.
- Generate summary statistics and histograms for quantitative variables.
- Generate relative frequency tables and charts for categorical variables.


## Recommendations for Analysis Subfolder
Add concise comments to the code indicating the commands that generate specific results.

If possible, make a standalone script for all the figures.
- If you use different software (e.g. R, Stata) to generate the figures, do a standalone script for each software.
- Start *each* figure by calling the relevant analysis data file and generate the figure from it, so that you do not need to run a large block of code (e.g. to clean original data files) each time you want to update a figure.
- As long as it applies, do the same for tables.