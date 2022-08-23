# \<Paper's Title\>

The files in this folder facilitate the replication of the results in "\<Paper's Title\>" by \<Author(s)\> (\<email(s)\>).


## SYSTEM FEATURES
The results in the paper were generated using the following:
- Operating system(s): 	macOS Version, Windows Version.
- Software: 		Matlab Version, Stata Version, R Version, Python Version, LaTeX Version.
- Essential add-ons: 	Financial Toolbox (Matlab); regsave, texsave (Stata); tidyverse (R); numpy, pandas (Python).
- Restricted sources: 	Bloomberg.
- Running time: 	Tidy \<XX\> min, Stats \<XX\> min, Analysis \<XX\> min.


## CONTENTS OF FOLDER
- README.txt (this file)
- doAll.sh: generates results, paper and slides
- Codes folder with the following subfolders:
	- Tidy: codes that generate the analysis data files by cleaning and processing the original data files.
	- Stats: codes that check the analysis data files (e.g. look for outliers) and provide descriptive statistics of the variables used.
	- Analysis: codes that perform the analysis with comments indicating the commands that generate specific results.
	- Extra: auxiliary, temporary and old codes.
- Data folder with the following subfolders:
	- Metadata: files documenting the data sources and variables.
	- Raw: original data files.
	- Analytic: analysis (gleaned or processed) data files.
	- Extra: auxiliary, temporary and old data files.
- Docs folder with the following subfolders:
	- Paper: files that make up the paper.
	- Slides: files that make up the slides.
	- Equations: files referencing equations.
	- Figures: figures used in the paper or the slides.
	- Tables: tables used in the paper or the slides.
	- Settings: files with settings for the paper and the slides.
	- References: files listing the cited references.
	- Extra: auxiliary, temporary and old files.


## INSTRUCTIONS FOR REPLICATION
The metadata guide (Data -> Metadata -> Metadata-Guide.docx) describes the (original and analysis) data files as well as instructions on how to update them.

The replication folder uses stratification to avoid repeating code or duplicating files (e.g., equations, figures and tables), and to facilitate collaboration, development and testing (by focusing on specific parts). The following master files call the necessary elements in the required order:
- Codes -> Analysis -> data_analysis.EXT: runs the codes sequentially to generate the figures and tables; the codes workflow is detailed below.
- Docs -> Paper -> paper.tex: puts together the pieces constituting the paper.
- Docs -> Slides -> slides.tex: calls equations, figures and tables.
- doAll.sh: calls the previous master files sequentially to generate the results and the latest versions of the paper and the slides instead of executing each master file individually.


## CONSIDERATIONS
Make sure the names of files and folders added or modified have *no* spaces.

The codes use relative paths based on the structure of the main folder as provided, so they run regardless of where the main folder is located.

The codes use the Unix convention (i.e. forward slash) in directory paths. If an error occurs while executing a code in a Windows machine, just modify it (i.e. use backslashes) where appropriate. Matlab codes are written to be independent of the platform used.

Most of the results in the paper can be replicated using the analysis data files, which:
- Contain most of the variables necessary for the analysis, generated from the original data files (some of which are not shared due to licensing rights).
- Can be updated if the user has access to the (restricted) original data sources.


## REPLICATION REFERENCES
For more information on the reproducibility of empirical research, see:
- [TIER protocol](http://www.projecttier.org/tier-protocol/).
- Gentzkow & Shapiro, 2014. Code and Data for the Social Sciences: A Practitioner’s Guide.
- Chang & Li, 2017. A Pre-Analysis Plan to Replicate Sixty Economics Research Papers That Worked Half of the Time.
- Andrew Rose, 2017. Notes for Efficient Data Organization/Handling.

For more on the structure of a Latex project, see:
- Mauricio Fernández, 2015. [Writing a Book/Thesis in Latex](https://youtu.be/Qjp-a2uZWZc?list=PLOxllPK04FfH5HHUlDPPyUGG-VvPWM5xT).


## CODE WORKFLOW (OPTIONAL)
Below is the order of the files called by the master files in the Codes subfolders to assist when following the codes.

In the Tidy subfolder, data_clean.EXT calls the following files:
1. \<Ordered list of files called by data_clean.EXT\>

In the Stats subfolder, data_stas.EXT calls the following files:
1. \<Ordered list of files called by data_stas.EXT\>

In the Analysis subfolder, data_analysis.EXT calls the following files:
1. \<Ordered list of files called by data_analysis.EXT\>