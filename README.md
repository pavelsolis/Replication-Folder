# Research Replication Folder

This repository template provides a folder structure that facilitates the reproducibility of research results.

Reproducibility of your results is desirable. This goal is easier to achieve if it is part of the research process, from inception to completion. The folder structure and example files in this template facilitate working on a project that is replicable. Just [create your project repository from the template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template).
- The philosophy behind the folder structure is to automate as much as possible so that manual tweaks are not necessary. In this way, someone else (including yourself) can easily *replicate* and *update* the results.
- Short guides (for data, codes and docs) briefly describe the purpose of some folders and example files.
- If you are new to version control with Git/GitHub, [here](https://github.com/pavelsolis/Git-GitHub-Primer) are step-by-step instructions to start from scratch.

Once you have created your project repository from the template, tailor this file (README.md) to your specific project. Start by deleting this introduction so that only the description of your project below remains in it.

For more information on the reproducibility of empirical research, see:
- Chang & Li, 2017. A Pre-Analysis Plan to Replicate Sixty Economics Papers That Worked Half of the Time.
- Fernández, M., 2015. [Writing a Book/Thesis in LaTex](https://youtu.be/Qjp-a2uZWZc?list=PLOxllPK04FfH5HHUlDPPyUGG-VvPWM5xT) (on the structure of a LaTex project).
- Gentzkow & Shapiro, 2014. Code and Data for the Social Sciences: A Practitioner’s Guide.
- Rose, A., 2017. Notes for Efficient Data Organization/Handling.
- [TIER protocol](http://www.projecttier.org/tier-protocol/).


# \<Title of the Paper\>

The files in this folder facilitate the replication of the results in "\<Title of the Paper\>" by \<Author(s)\> (\<email(s)\>).


## System Features
The results in the paper were generated using the following:
- Operating system(s): 	\<macOS Version, Windows Version\>.
- Software: 		\<Matlab Version, Stata Version, R Version, Python Version, LaTeX Version\>.
- Add-ons (essential): 	\<Financial Toolbox (Matlab); esttab (Stata); tidyverse (R); numpy, pandas (Python)\>.
- Restricted sources: 	\<Bloomberg\>.
- Running time: 	Tidy \<XX\> min, Stats \<XX\> min, Analysis \<XX\> min.


## Contents of Folder
- README.md (this file).
- LICENSE: open source license for the repository template.
- doAll.sh: calls the main files to generate the results and the latest versions of the paper and the slides.
- Data folder with the following subfolders:
	- Metadata: files documenting the data sources and variables.
	- Raw: original data files.
	- Analytic: analysis (gleaned or processed) data files.
	- Extra: auxiliary, temporary and old data files.
- Codes folder with the following subfolders:
	- Tidy: codes that generate the *analysis data files* by cleaning and processing the *original data files*.
	- Stats: codes that inspect the analysis data files (e.g., for outliers) and yield descriptive statistics.
	- Analysis: codes that perform the analysis.
	- Extra: auxiliary, temporary and old codes.
- Docs folder with the following subfolders:
	- Paper: files that make up the paper.
	- Slides: files that make up the slides.
	- Numbers: code-generated .txt files containing specific numbers cited in the paper and slides.
	- Equations: files that define and reference equations.
	- Figures: files for the figures used in the paper or the slides.
	- Tables: files for the tables used in the paper or the slides.
	- Settings: files with settings for the paper and the slides.
	- References: files listing the cited references.
	- Extra: auxiliary, temporary and old files.


## Instructions for Replication
The metadata file (Data/Metadata/metadata.docx) describes the (original and analysis) data files and provides instructions on how to update them.

The folder structure uses stratification to avoid repeating code or duplicating files (e.g., equations, figures, tables), and to facilitate collaboration, development and testing (since researchers can focus on specific parts). The following main files call the necessary bits in the required order:
- Codes/Analysis/data_analysis.EXT: runs the codes sequentially (workflow below) to generate the results.
- Docs/Paper/paper.tex: puts together the pieces constituting the paper.
- Docs/Paper/appendix.tex: generates a standalone file for the appendix.
- Docs/Slides/slides.tex: calls equations, figures and tables.
- doAll.sh: calls the previous main files sequentially to avoid having to execute them individually.


## Considerations
Make sure the names of files and folders added or modified have *no* spaces.

The codes run regardless of the location of the main folder because they use relative paths based on its structure.
- When possible, directory paths are written to be independent of the platform used. Otherwise, the scripts use the Unix convention (i.e., forward slash) in directory paths; modify them (i.e., use backslashes) if an error occurs while executing a script in a Windows machine.

The analysis data files used to replicate (most of) the results in the paper:
- Contain (most of) the variables necessary for the analysis, generated from the original data files; some variables and original data files are not shared due to licensing rights.
- Can be updated if the user has access to the (restricted) original data sources.


## Code Workflow (Optional)
Below is the order of the scripts called by the main files in the Codes subfolders to assist in following the codes.

Codes/Tidy/data_clean.EXT calls the following scripts:
1. \<Ordered list of scripts called by data_clean.EXT\>

Codes/Stats/data_stats.EXT calls the following scripts:
1. \<Ordered list of scripts called by data_stats.EXT\>

Codes/Analysis/data_analysis.EXT calls the following scripts:
1. \<Ordered list of scripts called by data_analysis.EXT\>
