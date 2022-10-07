# Equations Guide

All equations should be defined in Docs/Equations/equations.tex so that they are written only once.
- This convention reduces errors when editing equations.

Then create a .tex file (in the Docs/Equations folder) using the following naming conventions:
- Add 'N' or 'U' at the end of the filename to indicate whether the equation is numbered or unnumbered.
- For numbered equations, use the same filename as the label for the equation to facilitate referencing them.

Examples:
- If the filename is EqNameN.tex, then `\label{eq:EqNameN}`.
- If three equations need to be numbered, unnumbered and both, each one is defined once in equations.tex but there will be four .tex files: EqOneN.tex, EqTwoU.tex, EqThreeN.tex and EqThreeU.tex. So, if the last equation needs a correction, only one file is changed (equations.tex) instead of two (EqThreeN.tex, EqThreeU.tex). An example of this case is when the same equation needs to be numbered in the paper but unnumbered in the slides.
- See the example .tex files in the Docs/Equations folder.

Finally, in the paper or the slides call an equation with `\input{../Equations/EqNameN}` and reference it as `\ref{eq:EqNameN}`.