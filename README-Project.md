# <Paper's Title>

The files in this folder are provided to facilitate the replication of the results in "<Paper's Title>" by <Author(s)> (<email(s)>).


## SYSTEM FEATURES
-------------------------------------------------------------------------------------
The results in the paper were generated using the following:
- Operating system(s): 	macOS Version, Windows Version.
- Software: 		Matlab Version, Stata Version, R Version, Python Version, LaTeX Version.
- Essential add-ons: 	Financial Toolbox (Matlab); regsave, texsave (Stata); tidyverse (R); numpy, pandas (Python).
- Restricted sources: 	Bloomberg.
- Running time: 	Tidy XX min/hr, Stats XX min/hr, Analysis XX min/hr.


## CONTENTS OF MAIN FOLDER
-------------------------------------------------------------------------------------
README.txt (this file)

doAll.sh: generates results, paper and slides

Codes folder: 
- Tidy folder: codes that generate the analysis data files by cleaning and processing the original data files
- Stats folder: codes that provide descriptive statistics of the variables used and check the analysis datasets (e.g. look for outliers)
- Analysis folder: codes that perform the analysis with comments indicating the commands that generate specific results
- Extra folder: auxiliary, temporary and old codes

Data folder:
- Metadata folder: files documenting the data sources and variables
- Raw folder: original data files
- Analytic folder: gleaned or processed data files
- Extra folder: auxiliary, temporary and old data files

Docs folder: 
- Paper folder: text files that make up the paper
- Slides folder: files that make up the slides
- Equations folder: files referencing equations
- Figures folder: figures used in the paper and the slides
- Tables folder: tables used in the paper and the slides
- Settings folder: files with settings for the paper and the slides
- References folder: files listing the cited references
- Extra folder: auxiliary, temporary and old files


## INSTRUCTIONS FOR REPLICATION
-------------------------------------------------------------------------------------
The metadata guide (Data -> Metadata -> MetadataGuide.docx) has a description of the (original and analysis) data files and instructions on how to update them.

The replication folder uses stratification to avoid repeating code or duplicating files (e.g. equations, figures and tables used in both the paper and the slides), and to facilitate collaboration, development and testing (because it allows focusing on specific parts). The following master files call the necessary elements in the required order:
- Codes -> Analysis -> analysis.EXT: runs the codes sequentially to perform the analysis and generate the results (figures and tables). The codes workflow is detailed at the end.
- Docs -> Paper -> paper.tex: calls the pieces constituting the paper.
- Docs -> Slides -> slides.tex: calls equations, figures and tables.
- doAll.sh: calls analysis.EXT, paper.tex and slides.tex to reproduce the results and generate the latest versions of the paper and the slides without manually executing each master file.


## CONSIDERATIONS
-------------------------------------------------------------------------------------
Make sure the names of files and folders added or modified have *no* spaces.

The codes use relative paths based on structure of the main folder as provided, so they work regardless of where the main folder is located.

Codes use the Unix convention (i.e. forward slash) in directory paths. An error may appear if the codes are executed in a Windows machine (which uses backslashes); in that case, just modify the codes where appropriate (e.g. executable .sh files). Matlab codes are written to be independent of the platform used.

Most of the results can be replicated using the analysis data files in Data -> Analytic, they:
- Contain most of the variables necessary for the analysis, generated with data downloaded from original sources (some of which are not shared due to licensing rights).
- Can be updated if the user has access to the (restricted) original sources.


## REPLICATION REFERENCES
-------------------------------------------------------------------------------------
For more information on the reproducibility of empirical research, see:
- TIER protocol (http://www.projecttier.org/tier-protocol/).
- Gentzkow & Shapiro, 2014. Code and Data for the Social Sciences: A Practitioner’s Guide.
- Chang & Li, 2017. A Pre-analysis Plan to Replicate Sixty Economics Research Papers That Worked Half of the Time.
- Andrew Rose, 2017. Notes for Efficient Data Organization/Handling.

For more on the structure of a LaTeX project, see:
- https://youtu.be/Qjp-a2uZWZc?list=PLOxllPK04FfH5HHUlDPPyUGG-VvPWM5xT


## CODE WORKFLOW (OPTIONAL)
-------------------------------------------------------------------------------------
Below is the order of the files called by the master files in the Codes subfolders to assist in understanding the codes.

In the Tidy folder, data_clean.EXT calls the following files:
- 

In the Stats folder, data_stas.EXT calls the following files:
- 

In the Analysis folder, data_analysis.EXT calls the following files:
- 