# Research Replication Folder

This repository template provides a folder structure that facilitates the reproducibility of research results. 

Reproducibility of your research results is desirable. This goal is easier to achieve if it is part of the research process, from inception to completion. The folder structure and example files in this template facilitate working on a project that is replicable. Just [create your project repository from the template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template).
- If you are new to version control with Git and GitHub, I provide step-by-step instructions on how to start from scratch [here](https://github.com/pavelsolis/Git-GitHub-Primer), or you can take a look at these great introductory pieces: [1](https://www.frankpinter.com/notes/git-for-economists-presentation.pdf), [2](https://www.sas.upenn.edu/~jesusfv/Chapter_HPC_5_Git.pdf), [3](https://rubygarage.org/blog/most-basic-git-commands-with-examples), [4](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow), [5](https://nvie.com/posts/a-successful-git-branching-model/).

The philosophy behind the folder structure and the example files is to automate as much as possible so that manual tweaks are not necessary. In this way, someone else (including yourself) can easily *replicate* and *update* your results.

Once you have created your project repository from the template, delete up to this line so that only the below description of your specific project reamins in this README.md file.


# \<Title of the Paper\>

The files in this folder facilitate the replication of the results in "\<Title of the Paper\>" by \<Author(s)\> (\<email(s)\>).


## SYSTEM FEATURES
The results in the paper were generated using the following:
- Operating system(s): 	macOS Version, Windows Version.
- Software: 		Matlab Version, Stata Version, R Version, Python Version, LaTeX Version.
- Add-ons (essential): 	Financial Toolbox (Matlab); esttab, scheme-modern (Stata); tidyverse (R); numpy, pandas (Python).
- Restricted sources: 	Bloomberg.
- Running time: 	Tidy \<XX\> min, Stats \<XX\> min, Analysis \<XX\> min.


## CONTENTS OF FOLDER
- README.md (this file).
- doAll.sh: generates the results, the paper and the slides.
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
	- Numbers: text files generated by the codes containing specific numbers cited by the paper and slides
	- Equations: files referencing equations.
	- Figures: figures used in the paper or the slides.
	- Tables: tables used in the paper or the slides.
	- Settings: files with settings for the paper and the slides.
	- References: files listing the cited references.
	- Extra: auxiliary, temporary and old files.


## INSTRUCTIONS FOR REPLICATION
The metadata file (Data -> Metadata -> metadata.docx) describes the (original and analysis) data files as well as instructions on how to update them.

The replication folder uses stratification to avoid repeating code or duplicating files (e.g., equations, figures and tables), and to facilitate collaboration, development and testing (by focusing on specific parts). The following main files call the necessary bits in the required order:
- Codes -> Analysis -> data_analysis.EXT: runs the codes sequentially to generate the results; the codes workflow is detailed below.
- Docs -> Paper -> paper.tex: puts together the pieces constituting the paper.
- Docs -> Slides -> slides.tex: calls equations, figures and tables.
- doAll.sh: calls the previous main files sequentially to generate the results and the latest versions of the paper and the slides instead of executing each main file individually.


## CONSIDERATIONS
Make sure the names of files and folders added or modified have *no* spaces.

The codes use relative paths based on the structure of the main folder as provided, so they run regardless of where the main folder is located.

The codes use the Unix convention (i.e. forward slash) in directory paths. If an error occurs while executing a code in a Windows machine, just modify it (i.e. use backslashes) where appropriate. Matlab codes are written to be independent of the platform used.

Most of the results in the paper can be replicated using the analysis data files, which:
- Contain most of the variables necessary for the analysis, generated from the original data files (some of which are not shared due to licensing rights).
- Can be updated if the user has access to the (restricted) original data sources.

You may want to read the guides that describe the structure of files in some folders. There are guides for: paper, slides, figures, tables, equations, metadata and codes (tidy, stats, analysis).


## REPLICATION REFERENCES
For more information on the reproducibility of empirical research, see:
- [TIER protocol](http://www.projecttier.org/tier-protocol/).
- Gentzkow & Shapiro, 2014. Code and Data for the Social Sciences: A Practitioner’s Guide.
- Chang & Li, 2017. A Pre-Analysis Plan to Replicate Sixty Economics Research Papers That Worked Half of the Time.
- Andrew Rose, 2017. Notes for Efficient Data Organization/Handling.

For more on the structure of a Latex project, see:
- Mauricio Fernández, 2015. [Writing a Book/Thesis in Latex](https://youtu.be/Qjp-a2uZWZc?list=PLOxllPK04FfH5HHUlDPPyUGG-VvPWM5xT).


## CODE WORKFLOW (OPTIONAL)
Below is the order of the files called by the main files in the Codes subfolders to assist when following the codes.

In the Tidy subfolder, data_clean.EXT calls the following files:
1. \<Ordered list of files called by data_clean.EXT\>

In the Stats subfolder, data_stas.EXT calls the following files:
1. \<Ordered list of files called by data_stas.EXT\>

In the Analysis subfolder, data_analysis.EXT calls the following files:
1. \<Ordered list of files called by data_analysis.EXT\>