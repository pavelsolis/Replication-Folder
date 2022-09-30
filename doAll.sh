#!/bin/bash
# This script calls the main files for the codes, the paper and the slides.
# Codes are executed first to generate the figures and (the fragment part of the) tables called by the paper, then each LaTeX file for the figures and tables is compiled to output an updated PDF version that is used by the slides.
# Comment/uncomment lines as necessary to execute or omit specific parts.
# To execute the script, in the Terminal go to where this file is located and just type 'sh doAll.sh'. The script has already been made executable (by typing 'chmod a+x doAll.sh' in the Terminal).
# If you cannot execute this script: (1) type each command in the Terminal, or (2) run the codes using the respective software and compile each LaTeX document using a LaTeX Editor.

pathmain=`pwd`
# cd $pathmain/Codes/Analysis/; nohup stata -b do data_analysis &	# substitute the last part for the respective command depending on the software used for the analysis
cd $pathmain/Docs/Paper/; pdflatex "paper.tex"
cd $pathmain/Docs/Paper/; pdflatex "appendix.tex"
cd $pathmain/Docs/Figures/; for i in *.tex; do pdflatex "$i"; done
cd $pathmain/Docs/Tables/; for i in *.tex; do pdflatex "$i"; done
cd $pathmain/Docs/Slides/; pdflatex "slides.tex"
cd $pathmain