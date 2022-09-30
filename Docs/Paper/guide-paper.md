# Paper Guide

The contents of the paper are distributed in different files like abstract.tex, sections.tex and appendix.tex. If the paper is part of a thesis, for example, the main file then can omit to call the abstract.tex file.

Elements of the paper (like title, acknowledgements, authors' names and affiliations) are stored in separate files in Docs/Settings so that edits are done only once regardless of the number of files using them (e.g., paper.tex, slides.tex).


## Versions
Conditionals provide flexibility to generate the following versions of the paper *just by switching toggles*:
- An outline version containing only sections' takeaways to have a bird's-eye view of the paper.
- A draft version including boxes with to-do lists and links to the table of contents to facilitate the back and forth while writing and editing.
- A blind version without author identifiers so that it is ready to be submitted to peer-reviewed journals.
- A float version in which figures and tables appear at the end, with pointers to them in the text.
- A tracked version highlighting the changes from a previous version to facilitate referee revisions.
- A one-file version with appendices included; in this case, the references will list citations made in both the paper and the appendix.
- See examples of different versions in the Docs/Extra/Temp folder.

To generate the desired version, adjust the conditionals defined in Docs/Settings/toggles.tex as needed.
- The idea behind the conditionals is to avoid extra editing when switching versions.
- To switch versions smoothly, just follow the structure in the example files like Docs/Paper/sections.tex. For example, write each section takeaway outside the fulldraft toggle and the section content inside.


## Recommendations
Define frequently-used words potentially subject to change (e.g. date of the last observation in the sample) as commands in the Docs/Settings/variables.tex file.
- In this way, any required edit is done only once but the change is reflected in all the text, including the notes below figures and tables (see the examples in Docs/Figures and Docs/Tables).

Depending on your needs, you can have the appendix after the main text in the same file or as a separate file.
- Since Docs/Paper/appendix.tex always generates a standalone file for the appendix (with its own references), the decision is thus whether to include the appendix in the same file as the paper.
- The one-file case can be useful for writing, editing and distributing, while the two-file case may be useful for submitting to journals.
- To switch between the two cases, turn the `withappdx` toggle on or off in Docs/Settings/toggles.tex as needed.
	- In the case in which some references only appear in the appendix, but not in the paper, there will be 'extra' references in the paper when you switch *from* including the appendix *to* not including it as part of the same file.
	- To address that case, re-run Biber for Docs/Paper/paper.tex and compile it again so that citations only made in the appendix are removed from the references of the paper.
- Make sure you write the contents of your appendix in Docs/Paper/appdxfiller.tex.
	- In this way, the content of the appendix in the one- and two-file cases is the same (i.e., no extra editing is necessary) because both paper.tex and appendix.tex call the same appdxfiller.tex file.

Use a reference manager software to simplify the process of updating the library.bib file.

Use the Docs/Paper/highlights.docx file to summarize (without jargon) the main points of the paper.


## Considerations
The Docs/Settings/pagesetup.tex file redefines the Latex float defaults for a better treatment of figures and tables in the text. You can modify that file to adjust or restore the default values.

The Docs/Extra/Tasks/tasks.tex file can help you to manage the to-dos for the paper and the slides.