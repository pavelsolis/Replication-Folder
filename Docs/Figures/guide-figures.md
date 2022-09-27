# Figures Guide

The Docs/Figures folder contains the following subfolders:
- Plain: original image files (e.g. png, jpeg, eps) downloaded or generated with your preferred software(s).
- Tikz: files for figures generated with the Tikz package.
- Temp: auxiliary, temporary and old figures.


## Recommendations
Each figure used in the paper or the slides should have a .tex file (saved in the Docs/Figures folder) with a preamble, title and notes.
- Other .tex files (e.g., sections.tex) can call a figure .tex file and skip the preamble.
- This avoids the need to re-run the script generating the figure if you just want to change the title, the label or the notes.
- This allows to generate a standalone PDF file for the figure, which can be called by the slides in case the title and the notes of a figure are needed.
- This allows to have *long* notes below a figure for the paper and *short* notes for the slides, without the need to duplicate files. See the examples included in the repository template.

To facilitate referencing the figures, use the same filename as the label for the figure.
- Example: filename 'exfig' and label '\label{fig:exfig}'.

Make sure the figures have a consistent format throughout the paper and slides.

If possible, for the x- and y-labels in the figures:
- Format all labels in the same way.
- Use the same font as in the text.
- Verify they are horizontally aligned (rotate them if necessary).
- Labels should be legible for the paper and the slides.

If possible, for the figures in the slides:
- Use the same background color as in the slides.
- Adjust the font size for the slides.
- If you want to uncover a figure in layers, save the different versions of the figure keeping similar axes. In Beamer, use the \only<slidenum> command to reveal each layer.

Run the doAll.sh file (or the relevant line for the figures) to generate the latest PDF versions for all the figures.
- This ensures that the latest versions of the figures are used in the slides (when they call the PDF versions of the figures).
- For that to work, all the figures .tex files need to be saved in the Docs/Figures folder.


## Notes
- The \fignote and \fignotes commands defined in Docs/Settings/macros.tex handle the notes below a figure.