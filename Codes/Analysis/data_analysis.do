/* Code for 'Title of the Paper' by Author(s) (email(s)), Date */
* \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//////////////////////////////////////////
* ==============================================================================


* ------------------------------------------------------------------------------
* Preamble
* ------------------------------------------------------------------------------
cd "~/Documents/GitHub/Repository-Name"						// update as necessary
local pathmain `c(pwd)'

* Directories
global pathdraw "`pathmain'/Data/Raw"
global pathdata "`pathmain'/Data/Analytic"
global pathcode "`pathmain'/Codes"
global pathtbls "`pathmain'/Docs/Tables"
global pathfigs "`pathmain'/Docs/Figures"

* Files
global file_ori "$pathdraw/filename.extension"				// original extension
global file_asc "$pathdata/filename.csv"					// ASCII extension
global file_ans "$pathdata/filename.dta"					// dta extension
global file_sta "$pathtbls/Stats/stats"
global file_reg "$pathtbls/reg_results"

* ------------------------------------------------------------------------------
* Clean dataset
* ------------------------------------------------------------------------------
import excel using $file_ori, clear firstrow case(lower)	// original dataset
do "$pathcode/Tidy/data_clean"
outsheet using $file_asc, comma replace						// shareable dataset
cd $pathdata 												// working directory

* ------------------------------------------------------------------------------
* Load dataset (from ASCII file)
* ------------------------------------------------------------------------------
import delimited $file_asc, clear
	gen date2 = date(date, "DM20Y")
	format date2 %td
	drop date
	rename date2 date
	order date, first
save $file_ans, replace										// analysis dataset

* ------------------------------------------------------------------------------
* Descriptive statistics
* ------------------------------------------------------------------------------
log using $file_sta, replace
do "$pathcode/Stats/data_stats"								// incl code for numbers cited in text
log close
translate $file_sta.smcl $file_sta.pdf, replace
erase $file_sta.smcl

* ------------------------------------------------------------------------------
* Analysis
* ------------------------------------------------------------------------------
log using $file_reg, replace
do "$pathcode/Analysis/figures"								// 'use $file_ans, clear' per figure
do "$pathcode/Analysis/regressions"							// incl code for numbers cited in text
log close
translate $file_reg.smcl $file_reg.pdf, replace
erase $file_reg.smcl
