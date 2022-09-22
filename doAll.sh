#!/bin/bash
# This script runs the main files for the codes, the paper and the slides.
# Comment lines as necessary to omit executing specific parts.
# If you cannot execute this script: (1) manually type the following commands in the Terminal, or (2) run the codes using the respective software and compile each LaTeX document using a LaTeX Editor.

pathmain=`pwd`
cd $pathmain/Codes/Analysis/; do nohup stata -b do data_analysis &; done
cd $pathmain/Docs/Paper/; do pdflatex "paper.tex"; done
cd $pathmain/Docs/Figures/; for i in *.tex; do pdflatex "$i"; done
cd $pathmain/Docs/Tables/; for i in *.tex; do pdflatex "$i"; done
cd $pathmain/Docs/Slides/; do pdflatex "slides.tex"; done
cd $pathmain

# In the Terminal
# To make the script executable type: chmod a+x scriptname.sh
# To run the script type: sh file_duplicator.sh