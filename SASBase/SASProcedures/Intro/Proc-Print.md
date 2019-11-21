http://www.ssc.wisc.edu/sscc/pubs/4-18.htm


Proc Print
 
Proc print simply prints the contents of a data set to the lst file. The basic syntax is
 
proc print data=dataset;
 run;
 
All you have to do is specify the data set.
 
By default SAS will format the output such that it will be centered on a printed page. 
You can override this behavior by adding
 
options nocenter;
 
right before the proc print. This can make it easier to read on the screen. 
You can also set the line size and page size SAS will use. 


.....................................................
