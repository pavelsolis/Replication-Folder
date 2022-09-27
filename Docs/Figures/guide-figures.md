# Figures Guide

The Docs/Figures folder contains the following subfolders:
- Plain: original images (e.g. png, jpeg, eps) downloaded or generated with your preferred software(s).
- Tikz: files for figures generated with the Tikz package.
- Temp: auxiliary, temporary and old figures.


## Recommendations
For as many figures as possible, generate their images with your preferred software(s) and save them in the Figures/Plain folder.
- Call each image from a .tex file saved in the Docs/Figures folder, which should have a preamble, title and notes.
- See Docs/Figures/exfig.tex and Docs/Figures/Plain/exfigure1.png.
- For figures that do not involve an image, save them in the Figures/Tikz folder.

Figure .tex files calling images allow to:
- Call those files from other .tex files (e.g., sections.tex) which skip the preamble.
- Update the details of the figure (e.g., title, label, notes) without having to re-run any script.
- Generate a standalone PDF file for each figure, which can then be called by the slides.
- Have *long* notes below a figure for the paper and *short* notes for the slides, without having to duplicate files.

To facilitate referencing the figures, use the same filename as the label for the figure.
- Example: filename 'exfig.tex' and label '\label{fig:exfig}'.

Make sure the figures have a consistent format throughout the paper and slides.
- Confirm that identical units have the same symbol (e.g. \%) or label across figures.

If possible, use the same font for the x/y labels in the figures as in the text.
- Verify that the labels are horizontally aligned (rotate them if necessary).

If necessary, for the figures in the slides:
- Use the same background color as in the slides.
- Adjust the font size.
- If you want to uncover a figure in layers, save the different versions of the figure preserving the axes, and then use the \only<slidenum> command in Beamer to reveal each layer.

Run the doAll.sh file (or the relevant line for the figures) to generate the latest PDF versions for all the figure .tex files in the Docs/Figures folder.
- This ensures that when the slides call the PDF versions of the figures, they are up to date.
- This excludes figures saved in the Figures/Tikz folder, which are assumed to be up to date.