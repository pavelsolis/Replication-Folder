# Codes Guide

The scripts generating the research results are distributed in the following subfolders.
- Scripts in the Codes/Tidy folder clean and process the *original data files* into the *analysis data files*.
- A data appendix consisting of metadata and descriptive statistics serves as a users' guide for the *analysis data files*.
	- Data/Metadata/metadata.docx describes the variables in the *analysis data files*.
	- Scripts in the Codes/Stats folder inspect the *analysis data files* (e.g. for outliers) and yield descriptive statistics for the variables used.
- Scripts in the Codes/Analysis folder use the *analysis data files* to generate the specific results.


## General Recommendations
Use relative paths based on the structure of the main folder, so that the codes run regardless of its location.

Whenever possible, write directory paths to be independent of the platform used.
- See, for example, `fullfile` in Matlab, `file.path` in R and `os.path.join` in Python.

In each subfolder, break tasks into scripts and use main files to call the scripts sequentially.
- For example, data_clean.EXT for the data files, data_stats.EXT for the descriptive statistics, and data_analysis.EXT for the results.
	- If those main files are written in the same programming language, data_analysis.EXT could in turn call data_clean.EXT and data_stats.EXT. See the example script Codes/Analysis/data_analysis.do; it *assumes* that the scripts data_clean.do, data_stats.do, figures.do, regressions.do exist in their respective subfolders to reduce the number of extra files included in the repository.
- List all the scripts called by each main file at the end of the README.md file.

Code in a way that the scripts are agnostic to the sample size so that no additional coding is necessary when you update the datasets.

Add concise comments to the code indicating the commands that generate specific results.

Numbers cited in the text should be updated whenever you run the codes (e.g. after a dataset update) to avoid recreating results during revisions.
- To automate this process, include code to store each cited number as a txt file in the Docs/Numbers folder. See the example script Codes/Extra/Temp/exnumbers.do.
- Use the \double command (defined in Docs/Settings/macros.tex) to cite those numbers in the paper and the slides. The example number Docs/Numbers/exNumMean.txt is called by Docs/Paper/sections.tex and Docs/Slides/slides.tex.

Use Git branches when editing code.
- Branches allow you to test changes in the codes while keeping workable versions intact.
- See [here](https://github.com/pavelsolis/Git-GitHub-Primer#driessens-branching-model) for an effective Git branching model adapted to a research project.


## Recommendations for Tidy Subfolder
Avoid manual changes to the original data files as much as possible.
- All steps should ideally be programmed.
- Report any necessary manual changes to a data file in the respective entry in Data/Metadata/metadata.docx so that a user can repeat the same steps.


## Recommendations for Stats Subfolder
Write the scripts in this subfolder *after* the ones in the Codes/Tidy folder and *before* the ones in the Codes/Analysis folder.

For the variables in the analysis data files, the scripts in this subfolder should:
- Inspect for outliers.
- Plot the variables in both levels and growth rates for time series.
- Generate summary statistics and histograms for quantitative variables.
- Generate relative frequency tables and charts for categorical variables.


## Recommendations for Analysis Subfolder
Start the codes generating *each* figure and table by calling the relevant analysis data file. In this way,
- You do not need to run a large block of code (e.g. to clean original data files) each time you want to update a float.
- You can update a particular float independently from the others (by executing only the lines for that particular float).

If possible, make a standalone script for all the figures and another for all the tables.
- If you use different programming languages (e.g. R, Matlab, Stata) to generate them, do a standalone script for each language.