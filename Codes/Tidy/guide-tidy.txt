# Tidy Guide

The purpose of the codes in the Codes -> Tidy folder is to clean and process the *original data files* into the *analysis data files*, which are then used to generate the results.

## Recommendations
As much as possible, avoid manual changes to the original data files. Ideally, all steps should be programmed. 
- Report any necessary manual changes in the respective entry for the data file in metadata.docx (Data -> Metadata) so that a user can repeat the same steps.

Use a main file (e.g. data_clean.EXT) to call the scripts sequentially to generate all the analysis data files.
- List all the scripts called by such main file at the end of the README.md file.