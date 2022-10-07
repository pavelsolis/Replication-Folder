# Paper Guide

The paper and the slides share some common elements (like title, authors' names and affiliations), which are stored in separate files in the Docs/Settings folder so that edits are done only once regardless of the number of files using them (e.g., paper.tex, slides.tex).

Within the Docs/Paper folder, the contents of the paper are distributed in different files (like thanks.tex, abstract.tex and sections.tex) to give flexibility.
- If the paper is part of a thesis, for example, the main file can omit to call the abstract.tex file.


## Versions
Conditionals provide flexibility to generate the following versions of the paper *just by switching toggles*.
- An outline version containing only sections' takeaways to have a bird's-eye view of the paper.
- A draft version including boxes with to-do lists and links to the table of contents to facilitate the back and forth while writing and editing.
- A blind version without author identifiers and acknowledgements at the end so that it is ready to be submitted to peer-reviewed journals.
- A float version in which figures and tables appear at the end, with pointers to them in the text.
- A tracked version highlighting the changes from a previous version to facilitate referee revisions.
- A one-file version with appendices included, in which case the references will list citations made in both the paper and the appendix.
- See examples of different versions in the Docs/Extra/Temp folder.

To generate the desired version, simply adjust the conditionals defined in Docs/Settings/toggles.tex as needed.
- The idea behind the conditionals is to avoid extra editing when switching versions.
- To switch versions smoothly, just follow the structure in the example files like Docs/Paper/sections.tex. For example, write each section takeaway outside the `fulldraft` toggle and the section content inside.


## Recommendations
Define frequently-used words potentially subject to change (e.g. date of the last observation in the sample) as commands in Docs/Settings/variables.tex.
- In this way, any required edit is done only once but the change is reflected in all the text, including the notes below figures and tables.
- Example: When the variable `lastobs` defined in Docs/Settings/variables.tex is edited, the notes in the figures and tables using it will reflect the change after the next compilation.

You may sometimes need to have the appendix right after the main text in the same file.
- The one-file case can be useful for writing, editing and distributing, while the two-file case may be useful for submitting to journals.
	- Regardless of whether the appendix is included in the same file as the paper, Docs/Paper/appendix.tex will always generate a standalone file for the appendix (with its own references).

- To switch between cases, turn the `withappdx` toggle on or off in Docs/Settings/toggles.tex as needed.
	- In the case in which some references only appear in the appendix, but not in the paper, Docs/Paper/paper.tex might not compile properly when switching the toggle.
	- To address that case, re-run Biber for Docs/Paper/paper.tex and compile it again. You may need to remove all the LaTeX auxiliary files for paper.tex (i.e., file names ending with aux, bbl, log, etc.) before re-running Biber.
	- This process handles (i.e., removes or adds) citations only made in the appendix when switching the toggle.
- Make sure you write the contents of your appendix in Docs/Paper/appdxfiller.tex.
	- In this way, the content of the appendix in the one- and two-file cases is the same (i.e., no extra editing necessary) because both paper.tex and appendix.tex call the same appdxfiller.tex file.

Use a reference manager software to simplify the process of updating the library.bib file.

Use the Docs/Paper/highlights.docx file to summarize (without jargon) the main points of the paper.

Use Git branches when editing the paper.
- Branches allow you to work on new drafts while keeping a workable version intact.
- See [here](https://github.com/pavelsolis/Git-GitHub-Primer#driessens-branching-model) for an effective Git branching model adapted to a research project.


## Considerations
Docs/Settings/pagesetup.tex redefines the following (in case you want to restore the default values):
- The format of the `\today` command from 'month day, year' to 'month year'.
- The order of the thanks symbols.
- The default settings of Latex floats for a better treatment of figures and tables in the text.

Docs/Extra/Tasks/tasks.tex can help you to manage the to-dos for the paper and the slides.

During revisions, it may be useful to store comments received during presentations or in conversations with colleagues (e.g., in the Docs/Extra/Comments folder), but beware of anonymizing the comments or removing the files from the history before making the repository public.
