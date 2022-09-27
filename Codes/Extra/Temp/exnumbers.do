* cd Documents/GitHub/Replication-Folder/Docs/Numbers
sysuse auto, clear
summ mpg
tempname myfile
file open `myfile' using "exNumMean.txt", write replace
file write `myfile' %4.2f (r(mean))
file close `myfile'
