/* Code for 'Title of the Paper' by Author (email@domain.extension), Date */
* \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//////////////////////////////////////////
* ==============================================================================


* ------------------------------------------------------------------------------
* Preamble
* ------------------------------------------------------------------------------
cd "Users/Name/Documents/GitHub/Repository-Name"			// update as necessary
local pathmain `c(pwd)'

* Directories
global pathdraw "`pathmain'/Data/Raw"
global pathdata "`pathmain'/Data/Analytic"
global pathcode "`pathmain'/Codes"
global pathtbls "`pathmain'/Docs/Tables"
global pathfigs "`pathmain'/Docs/Figures"

* Files
global file_src "$pathdraw/filename1.extension"				// original extension
global file_org "$pathdraw/filename1.dta"					// dta extension
global file_ans "$pathdata/filename2.dta"					
global file_log "$pathtbls/results_regs"

* ------------------------------------------------------------------------------
* Dataset
* ------------------------------------------------------------------------------
import excel using $file_src, clear firstrow case(lower)	// original file
save $file_org, replace										// original dataset
do "$pathcode/Tidy/data_clean"
save $file_ans, replace										// analysis dataset
cd $pathdata												// workingdirectory

* ------------------------------------------------------------------------------
* Analysis
* ------------------------------------------------------------------------------
log using $file_log, replace

do "$pathcode/Stats/data_stats"								// include code for numbers in text
do "$pathcode/Analysis/figures"								// start each figure with: use $file_ans, clear
do "$pathcode/Analysis/regressions"							// include code for numbers in text

log close
translate $file_log.smcl $file_log.pdf, replace
erase $file_log.smcl
