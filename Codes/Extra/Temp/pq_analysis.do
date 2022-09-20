/* Code for 'Price and Quantity Effects of Monetary Policy Actions and Statements 
in an Emerging Economy' by Pavel Solís (pavel.solis@gmail.com), December 2021 */
* \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//////////////////////////////////////////
* ==============================================================================


* ------------------------------------------------------------------------------
* Preamble (uses Mac OS directory convention)
* ------------------------------------------------------------------------------
cd "/Users/Pavel/Documents/GitHub/Dissertation/Ch_MPS"		// update as necessary
local pathmain `c(pwd)'

* Directories
global pathdata "`pathmain'/Data/Analytic"
global pathdlfs "`pathmain'/Data/Analytic"					// can differ from $pathdata
global pathcode "`pathmain'/Codes/Analysis"
global pathtbls "`pathmain'/Docs/Tables"
global pathfigs "`pathmain'/Docs/Figures"

* Files
global file_src  "$pathdata/datapqmps.xlsx"
global file_dta1 "$pathdlfs/datapqmps1.dta"					// original dataset
global file_dta2 "$pathdlfs/datapqmps2.dta"					// cleaned dataset
global file_log  "$pathtbls/results_regs"
global file_tbl  "$pathtbls/results_tbls"

* Working directory
cd $pathdata

* ------------------------------------------------------------------------------
* Dataset
* ------------------------------------------------------------------------------
import excel using $file_src, clear firstrow case(lower)
save $file_dta1, replace
do "$pathcode/pq_varsdy"
do "$pathcode/pq_varsmy"

* ------------------------------------------------------------------------------
* Analysis
* ------------------------------------------------------------------------------
log using $file_log, replace

do "$pathcode/pq_figures"
do "$pathcode/pq_prices"
do "$pathcode/pq_flowsdy"
do "$pathcode/pq_flowsmy"
do "$pathcode/pq_lp_yc"
do "$pathcode/pq_lp_fx"
do "$pathcode/pq_lp_flows"
do "$pathcode/tic_flows"

log close
translate $file_log.smcl $file_log.pdf, replace
erase $file_log.smcl
