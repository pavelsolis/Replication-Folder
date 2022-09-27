# Metadata Guide

The metadata file (Data -> Metadata -> metadata.docx) describes the original and analysis data files and provides instructions on how to update them.
- The Data -> Raw folder contains the *original data files* downloaded from different sources. 
- The Data -> Analytic folder contains the *analysis data files* generated after cleaning and processing the original data files.


## Considerations
Excel files are excluded from the repository because they are usually large and:
- Very large files (\> 100 MB) do not work well in version control (they are often duplicated in the history).
- GitHub limits the size of files to 50 MB.

Data files with an Excel extension are thus not included in the replication folder; this behavior can be reverted by commenting the \*.xls\* line in the *.gitignore* file. They can be shared, however, by posting them online or by using a cloud-based platform.
- For this reason, when collaborating with other people, a designated person can be responsible for having the latest version of the Excel files and for sharing them.

Non-Excel data files (e.g., .csv, .mat, .dta) are not explicitly excluded but beware of the 50 MB limit.


## Recommendations
All the original and analysis data files used in the paper (regardless of the file extension) should be listed in metadata.docx, which should provide information for each data file that serves as a codebook for a user to work with and interpret the data appropriately.

Add an entry in metadata.docx for a data file:
- Each time you obtain a new original data file.
- Each time you generate a new analysis data file.

Register the date in metadata.docx in the respective entry for a data file:
- Each time an original data file is updated.
- Each time codes in the Tidy folder generate or update an analysis data file.

Make arrangements for restricted and confidential data files before making your repository public.
- Although arrangements for Excel files are not needed (as long as the \*.xls\* line in the *.gitignore* file is not commented), you may need to do them for other file extensions.