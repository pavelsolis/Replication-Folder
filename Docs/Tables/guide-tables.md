# Tables Guide

The Docs/Tables folder contains the following subfolders:
- Fragments: barebones contents of tables (e.g., cell entries, rules) generated with your preferred software(s).
- Standalone: full tables (probably not generated by a script).
- Temp: auxiliary, temporary and old tables.


## Recommendations
For as many tables as possible, generate their fragments with your preferred software(s) and save them in the Tables/Fragments folder.
- Call each fragment from a .tex file saved in the Docs/Tables folder, which should have a preamble, title and notes.
- See Docs/Tables/extabfrag.tex and Docs/Tables/Fragments/f_extabfrag.tex.
- For tables for which a fragment could not be generated, save them in the Tables/Standalone folder.

Table .tex files calling fragments allow to:
- Call those files from other .tex files (e.g., sections.tex) which skip the preamble.
- Update the details of the table (e.g., title, label, notes) without having to re-run any script.
- Generate a standalone PDF file for each table, which can then be called by the slides.
- Have *long* notes below a table for the paper and *short* notes for the slides, without having to duplicate files.

To facilitate referencing the tables, use the same filename as the label for the table.
- Example: filename 'extabfrag.tex' and label '\label{tab:extabfrag}'.

Make sure the tables have a consistent format throughout the paper and slides.
- Confirm that identical variables have the same names across tables (e.g. R2 vs R-squared).

If possible, use the same font for the tables as in the text.

If necessary, for the tables in the slides:
- Adjust the font size.
- If you want to uncover a table in layers, save the different versions of the table preserving the format, and then use the \only<slidenum> command in Beamer to reveal each layer.

Run the doAll.sh file (or the relevant line for the tables) to generate the latest PDF versions for all the table .tex files in the Docs/Tables folder.
- This ensures that when the slides call the PDF versions of the tables, they are up to date.
- This excludes tables saved in the Tables/Standalone folder, which are assumed to be up to date.