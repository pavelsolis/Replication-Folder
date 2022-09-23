Consideration:
- The codes in this folder (Codes -> Analysis) should be prepared after the ones in the Stats folder, which generate the descriptive statistics.

Recommendations:
- Add comments indicating the commands that generate specific results.
- Numbers referenced in earlier drafts of the paper may change in later versions (e.g. due to a dataset update). From the beginning, prepare a code file specifically to replicate the numbers highlighted in the paper. In this way, you minize the need to recreate results during revisions. Store specific numbers as txt files in the Docs/Paper/Numbers folder and call them with the \dynamic command defined in macros.tex.
- If possible, make standalone code for figures. That is, start by calling the relevant analysis data file and generate the figure from there. In this way, you do not need to run a large block of code to update a figure.
- Use a main file (e.g. data_analysis.EXT) to call the codes sequentially to generate the results.
- Example data_analysis.do included in Codes/Extra/Temp.
- Include code for numbers cited in text. Store a txt file for each number in Docs/Numbers.

- Depending on personal preference, one can choose among two approaches to code: (1) one main file in each subfolder (Tidy, Stats, Analysis), or (2) one main file for all the codes. To reduce the number of extra files included in the template folder, data_analysis.do uses the second approach; to illustrate how it calls other codes, it assumes that data_clean.do, data_stats.do, figures.do, regressions.do are existing codes in the respective subfolders.
- Code in a way that the scripts allow updates to the dataset