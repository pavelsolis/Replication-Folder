/* Code for 'Title of the Paper' by Author(s) (email(s)), Date */
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
global file_sta "$pathtbls/Stats/stats"
global file_reg "$pathtbls/reg_results"

* ------------------------------------------------------------------------------
* Clean dataset
* ------------------------------------------------------------------------------
import excel using $file_src, clear firstrow case(lower)	// original file
save $file_org, replace										// original dataset
do "$pathcode/Tidy/data_clean"
save $file_ans, replace										// analysis dataset
cd $pathdata 												// working directory

* ------------------------------------------------------------------------------
* Descriptive statistics
* ------------------------------------------------------------------------------
log using $file_sta, replace
do "$pathcode/Stats/data_stats"								// include code for numbers cited in text
log close
translate $file_sta.smcl $file_sta.pdf, replace
erase $file_sta.smcl

* ------------------------------------------------------------------------------
* Analysis
* ------------------------------------------------------------------------------
log using $file_reg, replace
do "$pathcode/Analysis/figures"								// start each figure with: use $file_ans, clear
do "$pathcode/Analysis/regressions"							// include code for numbers cited in text
log close
translate $file_reg.smcl $file_reg.pdf, replace
erase $file_reg.smcl
