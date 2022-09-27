# Paper Guide

The contents of the paper are distributed in different files like abstract.tex, sections.tex and appendix.tex. If the paper is part of a thesis, for example, the main file then can omit to call the abstract.tex file.

Elements of the paper (e.g., title, acknowledgements, authors' names and affiliations) are stored in separate files so that edits are done only once regardless of the number of files using them (e.g., paper.tex, slides.tex).


## Versions
Conditionals (defined in Docs/Settings/toggles.tex) provide flexibility to generate different versions of the paper *without additional work*.
- A full clean version, with or without an appendix included.
- An outline version containing only sections' takeaways to have a bird's-eye view of the paper.
- A draft version including boxes with to-do lists and links to the table of contents to facilitate the writing and editing processes.
- A blind version without author identifiers so that it is ready to be submitted to peer-reviewed journals.
- A float version in which figures and tables appear at the end, with pointers to them in the text.
- A tracked version highlighting the changes from a previous version to facilitate referee revisions.
- See examples of different versions in the Docs/Extra/Temp folder.

If the paper includes appendices, they can be included as part of the same file or generated as a separate file. Notice that in the one-file case, the references will list citations made in both the paper and the appendix.

To generate the desired version, adjust the conditionals in toggles.tex as needed.
- To shift between versions smoothly, just follow the structure in the example files; specifically, in the Docs/Paper/sections.tex file. For example, write each section takeaway outside the fulldraft toggle and the section content inside.
- The idea behind the conditionals is to avoid extra editing when shifting between versions.


## Recommendations
Define a command for frequently-used words potentially subject to change (e.g. date of the last observation in the sample) in the Docs/Settings/variables.tex file so that if they need to be updated, the edit is done only once but the change is reflected in all the text.

Use the Docs/Paper/highlights.docx file to summarize without jargon the main points of the paper.

It may be more convenient to include the appendix as part of the same file when drafting, but to generate a file for the paper and one for the appendix afterwards. To correctly change from one to two files:
- Comment the line calling the appendix in paper.tex. Re-run Biber and compile the paper.tex file again so that citations only made in the appendix do not appear in the references of the paper.
- Run aloneappendix.tex to generate the standalone appendix.
- In the one- and two-file cases, the content of the appendix is the same (i.e., no extra editing is necessary) because both paper.tex and aloneappendix.tex call the same appendix.tex file.

Use a reference manager to manage the library.bib file.


## Considerations
The pagesetup.tex file resets the Latex float defaults for a better treatment of figures and tables in the text. Modify that file to adjust or restore the default values.

The tasks.tex file in the Docs -> Extra -> Tasks folder can help to manage the to-dos for the paper and the slides.

The structure for the paper gives you flexibility to generate different versions of the paper: full draft vs outline, clean vs linked (when editing, it is useful to go back and forth to the table of contents), with vs without comment boxes (when editing, it is useful to keep in mind certain pending issues).

Explain the toggles.tex file. Also in slides.