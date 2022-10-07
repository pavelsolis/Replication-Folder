# Slides Guide

The slides and the paper share some common elements (like title, authors' names and affiliations), which are stored in separate files in the Docs/Settings folder so that edits are done only once regardless of the number of files using them (e.g., paper.tex, slides.tex).


## Versions
Conditionals provide flexibility to generate the following versions of the slides *just by switching toggles*.
- A concise (short) version with each slide containing all the necessary information.
- A stepwise (long) version uncovering pieces of information in some slides gradually.
- Both short and long versions can include speaker notes to the right or below the slides; you can even generate a file containing only the speaker notes.
- See examples of different versions in the Docs/Extra/Temp folder.

To generate the desired version, simply adjust the conditionals defined in Docs/Settings/toggles.tex as needed.
- The idea behind the conditionals is to avoid extra editing when switching versions.
- To switch versions smoothly, just follow the structure in Docs/Slides/slides.tex. For example, use the `stops` toggle in items, lists, hyperlinks *and* notes as needed.
- In the Notes section at the top of Docs/Slides/slides.tex, uncomment the respective line for the type of speaker notes needed.


## Recommendations
If the slides call the PDF versions of the floats (tables and figures), run the latex files generating the standalone PDF versions of the floats before compiling the slides.tex file.
- This ensures that the slides always use the latest version of the floats.
- See the doAll.sh file for the commands that automatically compile all the latex files in the Docs/Figures and Docs/Tables folders.

Use Git branches when editing the slides.
- Branches allow you to modify the contents of the slides while keeping a workable version intact.
- See [here](https://github.com/pavelsolis/Git-GitHub-Primer#driessens-branching-model) for an effective Git branching model adapted to a research project.


## Considerations
Add or modify the theme colors defined in Docs/Settings/themecolors.tex as needed.

Equations can be highlighted with colors in the slides if needed.
- Define the equation using the `coloreq` toggle. See the example in Docs/Equations/equations.tex.
- In the slides, turn the toggle on and call the equation. See the example in Docs/Slides/slides.tex.

In case citations are made in the slides, there are two options to process bib files for the slides: biblatex and natbib.
- The appropriate option may depend on the operating system.
- To switch between them, comment and uncomment the respective lines at the bottom of the Docs/Settings/packsbeamer.tex and Docs/Slides/slides.tex files.

List environments are customized using the enumerate package because the enumitem package interferes with beamer.