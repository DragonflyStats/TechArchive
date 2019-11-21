http://www.uky.edu/ComputingCenter/SSTARS/mixed1.htm


****************************************************************8


proc sort data = test;
	by descending p;
run;

**************************************************************

data test2;    *new file to be created

set test;	

lnq=log(q);
lnp=log(p);
lnex=log(ex);
drop p q ex;
proc print;
run;




data test;
   input name $ age;
cards;
John +35
;
run;

data test;
proc print;
run;



data combine;
  set one two;
run;




DATA EXAMPLE1;
     INPUT NAME $ SEX $ AGE INCOME;
CARDS;
Susan F 18 12000
Fred  M 20 21586
Jane  F 19 22232
John  M 19 14128
;


PROC PRINT;
PROC MEANS;
     VARIABLES AGE INCOME;
RUN;


TITLE 'My first SAS run';
OPTIONS ls=65;
DATA grades;
     INPUT name $ midterm final;
CARDS;
Susan    60 65
Bill     70 72
Monica   85 81
Francine 78 78
Jessica  72 74
Orin     80 82
;
PROC PRINT data=grades;
RUN;
