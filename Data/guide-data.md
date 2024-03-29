# Data Guide

The documentation and datasets used in the analysis are distributed in the following subfolders.
- The Data/Raw folder contains the *original data files* downloaded from different sources. 
- The Data/Analytic folder contains the *analysis data files* generated after cleaning and processing the *original data files*.
- The Data/Metadata folder contains files documenting the data sources and variables.
	- Data/Metadata/metadata.docx describes the original and analysis data files and provides instructions on how to update them. It serves as a codebook for a user to work with and interpret the data appropriately.


## Recommendations
Save the analysis data files in ASCII format (e.g., .txt, .csv, .dat), so that they are ready to be shared and accessed by anyone.
- Verify that they are exported correctly and contain all the relevant variables.

All the original and analysis data files relevant for the paper (regardless of file extension) should be listed in Data/Metadata/metadata.docx.
- Add an entry for a data file:
	- Each time you obtain a new original data file.
	- Each time you generate a new analysis data file.
- Register the date in the respective entry for a data file:
	- Each time an original data file is updated.
	- Each time codes in the Codes/Tidy folder generate or update an analysis data file.

Make arrangements for restricted and confidential data files before making your repository public.
- Although arrangements for Excel files are not needed (as long as the \*.xls\* line in the *.gitignore* file is not commented), you may need to do them for other file extensions.

Verify that any unused (yet potentially useful) data file is stored in the Data/Extra folder.


## Considerations
Excel files are usually large and thus excluded from the repository.
- Very large files (\> 100 MB) do not work well in version control (they are duplicated in the history).
- GitHub blocks files larger than 100 MB and sends warnings for files over 50 MB.

Excel files would then need to be shared in a conventional way (e.g., physical devices, website, cloud).
- Designate a person in the team responsible for having the latest version of the Excel files and for sharing them.

Excel files can be included in the repository by commenting the \*.xls\* line in the *.gitignore* file. 
- Non-Excel data files (e.g., .csv, .mat, .dta) are not excluded but beware of the 50 MB limit.
