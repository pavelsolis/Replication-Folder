# Data Guide

The documentation and datasets used in the analysis are distributed in the following subfolders.
- The Data/Metadata folder contains files documenting the data sources and variables.
	- Data/Metadata/metadata.docx describes the original and analysis data files and provides instructions on how to update them.
- The Data/Raw folder contains the *original data files* downloaded from different sources. 
- The Data/Analytic folder contains the *analysis data files* generated after cleaning and processing the *original data files*.


## Considerations
Excel files are usually large and thus excluded from the repository.
- Very large files (\> 100 MB) do not work well in version control (they are duplicated in the history).
- GitHub limits the size of files to 50 MB.

Excel files would then need to be shared in a conventional way (physical devices, website, cloud).
- Designate a person in the team responsible for having the latest version of the Excel files and for sharing them.

Excel files can be included in the repository by commenting the \*.xls\* line in the *.gitignore* file. 
- Non-Excel data files (e.g., .csv, .mat, .dta) are not explicitly excluded but beware of the 50 MB limit.


## Recommendations
All the original and analysis data files used in the paper (regardless of the file extension) should be listed in Data/Metadata/metadata.docx.
- It should provide information for each data file that serves as a codebook for a user to work with and interpret the data appropriately.
- Add an entry in metadata.docx for a data file:
	- Each time you obtain a new original data file.
	- Each time you generate a new analysis data file.
- Register the date in metadata.docx in the respective entry for a data file:
	- Each time an original data file is updated.
	- Each time codes in the Codes/Tidy folder generate or update an analysis data file.

Make arrangements for restricted and confidential data files before making your repository public.
- Although arrangements for Excel files are not needed (as long as the \*.xls\* line in the *.gitignore* file is not commented), you may need to do them for other file extensions.