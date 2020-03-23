# Ch_XXXX

The files in this folder are provided to facilitate the replication of the results in "Title of Paper" by Author (email)


## SYSTEM FEATURES
-------------------------------------------------------------------------------------
The results in the paper were generated using the following:
- Operating system: macOS High Sierra 10.14.6
- Software: Matlab R2019b, Stata 15
- Add-ons. Matlab: Financial Toolbox. Stata: regsave, texsave.
- Restricted data sources: Bloomberg
- Expected running time: Pre-Analysis (XX min/hr), Analysis (XX min/hr)


## CONTENTS OF THE MAIN FOLDER
-------------------------------------------------------------------------------------
README.txt (this file)

doAll.sh: generates results, paper and slides

Codes folder: 
- runCodes.EXT: executes the codes that generate the results
- Pre-Analysis folder: codes for cleaning and preparing the data
- Analysis folder: runAppendix.EXT and replication codes
- Aux foler

Data folder: 
- Analytic folder
- Raw folder
- Metadata folder
- Aux folder

Docs folder: 
- Paper folder
- Slides folder
- Equations folder
- Figures folder
- Tables folder
- DataStats folder: descriptive statistics of the variables used
- Settings folder: .tex files with settings for the paper and the slides
- References folder: .bib file with cited references
- Aux folder


## DATA FILES
-------------------------------------------------------------------------------------
See the metadata guide (Data -> Metadata -> MetadataGuide.docx) for a description of the data files (e.g. date accessed, how to obtain a copy, list of variables, sample period).

The results can be replicated using the data contained in the MAT-file (Data -> Analytic -> datasets.mat). This file constructs the necessary variables for the analysis using the data dowloaded from Bloomberg, which is not included in the replication folder due to licensing rights. However, the dataset can be recreated from scratch and, subsequently, updated if you have access to Bloomberg. See the metadata guide for instructions on how to recreate or update each of the following:
- Tickers documented in AE_EM_Curves_Tickers.xlsx (Bloomberg and Datastream)
- Tickers documented in Macro_Finance_Tickers.xlsx (Bloomberg)
- US yield curve from Gürkaynak, Sack & Wright (2007)


## INSTRUCTIONS TO REPLICATE THE STUDY
-------------------------------------------------------------------------------------
Open doAll.sh. This file calls runCodes.EXT (Codes -> runCodes.EXT) to reproduce the results (figures and tables), paper.tex (Docs -> Paper -> paper.tex) and slides.tex (Docs -> Slides -> slides.tex) to generate the latest versions of the paper and the slides. If you don't want to or can't execute doAll.sh, you can replicate the results by manually executing runCodes.EXT and then (in any order) executing paper.tex and/or slides.tex.

What do runCodes.EXT, paper.tex and slides.tex do?
Stratification (dividing into small components) avoids repeating code or duplicating files (e.g. equations, figures and tables used in both the paper and the slides) and allows one to focus on specific parts. This also has advantages in development and testing, as well as facilitating collaboration. The downside is that it may be difficult to follow the order of the codes and files. Master files solve this issue by calling the necessary files in the required order.
- runCodes.EXT: run codes sequentially to clean the data, perform the analysis and generate the results (figures and tables). See below if you want to follow the workflow of the codes.
- paper.tex: call abstract.tex, sections.tex and appendix.tex (the last two call equations, figures and tables).
- slides.tex: call title_slide.tex as well as equations, figures and tables.

Commands that generate specific results in the paper are indicated with comments in the code. Below is a list of results reported in the paper that are replicated:
1. Figure 3
1. Table 2, column 4
1. The simulation reported in section 4.3
1. The income elasticity of demand for beef (1.86) reported on page 58 of the paper


## FINAL COMMENTS
-------------------------------------------------------------------------------------
If you add or modify the files in the main folder, keep in mind that the names of files and folders must have *no* spaces.

The paths in the codes for opening and/or saving files are relative to the folder in which the file is located. Therefore, the codes work regardless of where the main folder is located. However, the relative paths rely on the structure of the main folder as provided.

The paths of directories are defined using the Unix convention (i.e. forward slash). Keep in mind that Windows systems use a backslash and so, an error may appear if the files are executed in a Windows machine. The user would just need to modify the codes where appropriate. This should only happen with executable .sh and .do files because the codes in Matlab were written to be independent of the platform used.

For more information on the reproducibility of empirical research, see:
- TIER protocol (http://www.projecttier.org/tier-protocol/)
- Gentzkow & Shapiro, 2014. Code and Data for the Social Sciences: A Practitioner’s Guide
- Chang & Li, 2017. A Pre-analysis Plan to Replicate Sixty Economics Research Papers That Worked Half of the Time

For more on the structure of a LaTeX project, see:
https://youtu.be/Qjp-a2uZWZc?list=PLOxllPK04FfH5HHUlDPPyUGG-VvPWM5xT


## CODE WORKFLOW (OPTIONAL)
-------------------------------------------------------------------------------------
Below are the details to facilitate following the workflow of the codes.

In pre-analysis folder
	run read_data.m 		-> generates dataset...

In analysis folder
	run rp_analysis.m		-> generates...
