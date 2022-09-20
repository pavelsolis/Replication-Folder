Considerations:
- Each main figure file has a preamble so that it can generate a standalone PDF file for the figure. Files (e.g., sections.tex, appendix.tex) calling the main figure file, skip that preamble.

Recommendations:
- To facilitate referencing the figures, use the same file name as the label for the figure. For example, filename 'exfigpdf' and label '\label{fig:exfigpdf}'.
- Make sure the figures have a consistent format throughout the paper and that the latest versions are used in the slides as in the paper.
- If possible, for the labels in the figures:
	- Use the same font as in the text.
	- Verify they are horizontally aligned (rotate them if necessary).
- If possible, for the figures in the slides:
	- Use the same background color as in the slides.
	- Adjust the font size for the slides.
- Run the XXXX main latex file XXXX to generate standalone PDF versions for all the figures.
- Format all labels in the same way.
- Labels should be legible for text and slides
- If you want to present a figure in steps, save the different versions of the figure keeping similar axes. In Beamer, use the \only<slidenum> command.
- Folder contains figure with notes. Generate the float files with your preferred software(s) and save them in Figures/Plain.  In this way, you don't need to re-run the code if you just want to change the title, the label or the notes of the table.
- Ideally, generate a figure directly from an analysis data file so that you don't need to run codes to clean original data files each time you update a figure. Same for tables

Notes:
- The \fignote and \fignotes commands handle the notes below a figure. Both commands are defined in macros.tex.
- Standalone, toggle longnotes for paper vs slides
- Describe subfolders: Plain original files (png, jpeg, eps), Tikz