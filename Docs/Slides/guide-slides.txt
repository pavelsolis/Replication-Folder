Structure:
- Elements of the slides (e.g., title, authors' names and affiliations) are stored in separate files so that they can be modified only once regardless of the number of files using them (e.g., paper.tex, slides.tex).

Versions:
- Conditionals (defined in toggles.tex) provide flexibility to generate different versions of the slides:
- Two versions of the slides can be generated: with and without stops, with and without notes.
- Examples of these versions are included in the Docs -> Extra -> Temp folder.
- To generate the desired version, just comment line XXXX and uncomment next line XXXX as needed. The idea is to avoid extra editing when shifting between versions.

- Examples of these versions are included in the Docs -> Extra -> Temp folder.
- To generate the desired version, just work following the structure of the sections.tex file (e.g., the section takeaway outside the fulldraft toggle and the section content inside) and adjust the conditionals in toggles.tex as needed. The idea behind the conditionals is to avoid extra editing when shifting between versions.

Recommendations:
- When using PDF versions of the floats (tables and figures) in the slides, run the main latex files generating standalone PDF versions of the floats before compiling the slides.tex file to ensure you are always using the latest version of the floats.


Considerations:
- The packsbeamer.tex file defines colors and themes. Modify them as desired.
- The tasks.tex file in the Docs -> Extra -> Tasks folder can help to manage the to-dos for the paper and the slides.
- Equations can be highlighted.
- natbib vs biblatex to process bib files in slides
- enumitem is not recommended b/c it interferes with beamer
- For the option of stepwise uncovering (\iftoggle{stops}{}{}) to work properly, use it in the content as well as in the notes. If it is only used in the content, there will be extra slides for the notes.
<> in notes

- To update figures and tables, before using them in slides
cd Docs/Figures/; for i in *.tex; do pdflatex "$i"; done; cd ../..
cd Docs/Tables/; for i in *.tex; do pdflatex "$i"; done; cd ../..
During revisions of the paper, execute text_numbers.EXT in Codes/Analysis/
This explains the tex files stored in Figures and Tables folders. Tex files not wanted to be updated are stored in subfolders.