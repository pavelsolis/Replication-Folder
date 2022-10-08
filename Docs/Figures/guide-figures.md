# Figures Guide

The Docs/Figures folder contains the following subfolders.
- Plain: original images (e.g., png, jpeg, eps) downloaded or generated with your preferred software.
- Tikz: files for figures generated with the Tikz package.
- Temp: auxiliary, temporary and old figures.


## Recommendations
Generate the original images with your preferred software and save them in the Figures/Plain folder.
- Call each image from a .tex file saved in the Docs/Figures folder, which should have a preamble, title and notes. See Docs/Figures/exfig.tex and Docs/Figures/exsubfig.tex.
- This approach allows to compile *all* .tex files in the Docs/Figures folder at the same time (see the doAll.sh file).
- For figures generated with the Tikz package, save them in the Figures/Tikz folder. See Figures/Tikz/extikz.tex.

Figure .tex files calling the original images allow to:
- Call them from other .tex files (e.g., Docs/Paper/sections.tex) which can skip the preamble.
- Update the details of the figure (like title, label, notes) without having to re-run any script.
- Generate a standalone PDF file for each figure, which can then be called by the slides.
- Have *long* notes below a figure for the paper and *short* notes for the slides, without having to duplicate files.

Use the same filename as the label for the figure to facilitate referencing them.
- Example: filename 'exfig.tex' and label '\label{fig:exfig}'.

Make sure the figures have a consistent format throughout the paper and the slides.
- Confirm that *identical* units have the same symbol (e.g., \%) or label across figures.

If possible, use the same font for the x/y labels of the figures as in the text.
- Verify that the labels are horizontally aligned (rotate them otherwise).

If necessary, for the figures in the slides:
- Use the same background color as in the slides.
- Adjust the font size.
- If you want to uncover a figure in layers, save the different versions of the figure preserving the axes, and then use the \only<slidenum> command in Beamer to reveal each layer.

Run the doAll.sh file (or the relevant line for the figures) to generate the latest PDF versions for all the figure .tex files in the Docs/Figures folder.
- This ensures that when the slides call the PDF versions of the figures, they are up to date.
- This excludes figures saved in the Figures/Tikz folder, which are assumed to be up to date.