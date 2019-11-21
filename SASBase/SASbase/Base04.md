SAS Base Chapter 4: Creating List Reports
=========================================

Creating a Basic Report (p101)
Selecting Variables(p102)
By default a `PROC PRINT` steps lists all the variables in the data set.
You can select variables and control the order in which they appear by using a VAR statement.

<pre><code>
proc print data = clinic.admit;
      	var age height weight fee;
run;
</code></pre>
 
Removing the OBS column (p104)

<pre><code> 
proc print data = clinic.admit noobs;
      	var age height weight fee;
run;
</code></pre>
 
Identifying Observations (p104)
Specifying WHERE Expression (p106)
Using the `CONTAINS` Operator (p107)
The mnemonic equivalent for the CONTAINS operator is ?
Specifying compound WHERE expressions (p107)
 
<table>
<tr><td>	Operator	</td><td>	Symbol	</td></tr>
<tr><td>	AND	</td><td>	&	</td></tr>
<tr><td>	OR	</td><td>	|	</td></tr>
</table>

Sorting Data (p108)
Generating Column Totals (p110)
<pre><code>
proc print data=clinic.insure;
     	var name policy balancedue;
     	where pctinsured <100;
    	 sum balancedue;
run;
</code></pre> 

Creating a Customized Layout with BY Groups and ID variables (p114)
Double Spacing Listing Output (p115)
Specifying Titles and Footnotes (p116)
Modifying and Cancelling Titles and Footnotes (p119)
Assigning Descriptive Labels (p120)
Temporary Assigning Labels to Variables (p120)
Using Single or Multiple LABEL Statements (p121)
Formatting Data Values (p122)
Temporary Assigning Formats to Variables (p122)

<pre><code>
proc print data=clinic.admiot;
  	var  actlevel fee;
  	where actlevel=’High’;
  	format fee dollar4. ;
run;
</code></pre> 
Specifying SAS Formats (p123)
Field Widths (p123)
Additional Features (p125)

p115
<pre><code>
proc print data=clinic.stress double;
var resthe maxhr rechr;
where tolerance ='I';
run;
</code></pre>

<hr>

<p>p121</p>

<pre><code>
proc print data=clinic.admit lable;
 var age height;
 label age= "age of Patient';
 label height ='Height in Inches';
run;

</code></pre>



p125
<pre><code>
proc print data =reps split='*';
var salesrep type unitsold net commsion;
label salesrep = 'sales *respresentative';
run;
</code></pre>


<hr>
### old 
SAS Base 4

p115

proc print data=clinic.stress double;
var resthe maxhr rechr;
where tolerance ='I';
run;

p121
proc print data=clinic.admit lable;
 var age height;
 label age= "age of Patient';
 label height ='Height in Inches';
run;

p125
proc print data =reps split='*';
var salesrep type unitsold net commsion;
label salesrep = 'sales *respresentative';
run;

--------------------

SAS Base 5

p153 
data sas.user stress; 
infile tests;
input ID 1-4 Name $ 6-25 $ RehsHR
Tolerance $ 45;
TotalTime = (timemin*60)+timeset;
run;

p155
data sas.user stress; 
infile tests;
..
if tolerance='D';
TotalTime = (timemin*60)+timeset;
run;

(p176)
libname clinic 'c:/bethesda/patients\admit';
 filname admit 'c:/bethesda/patients\admit';
data clinic.admittan;
 infile admit obs=5;
 input ID 1-4 Name $6-25 RestHR 27-29 MAXhr 31-33
 if tolerance ='D';
 TotalTime=(timemin*60) + timesec;
run;
proc print data=clinic.admittan;
run; 

LIBNAME and FILENAME statements are global. librefs and filerefs remain ine ffects
until you change them, cancel then or end o SAS session.

For each field of raw data then you read into your data set, you must specify
the following in the INPUT statement: a valid SAS staement
a starting column and if necessary column,.

Column input is appropriate only in some
situations.

--------------------

SAS Base 6



(p189)

data perm.updata
	infile invet;
	input item $1-13 IDnum $15-19
	Instock 21-22 Back Ord 24-25;
	Total=instock_backord;
run;

data perm.update;
 infile invent;
 input Item $ 1-13 $IDnum $ 15-19  Instock 21-- BackOrd 24-25;
 Total=Instock+backord;
run;


Writing a NULL Data Set

data _null_;
 infile invent;
 input Item $ 1-13 $IDnum $ 15-19  Instock 21-- BackOrd 24-25;
  Total=Instock+backord;
run;


How SAS Processes Program
Program Data Vector
Syntax Checking
Data Set Variable

(p192)
data perm.update;
   infile invent;
   input Item $ 1-13 IDnum $ 15-19
	Instock 21-22 BackOrd 24-25
   Total=instock+backord;
run;



--------------------
SAS Base 7

Introduction to PROC FORMAT
Invoking PROC FORMAT
Permanently Storing Your Formats

(p224) 
libname library 'C:/sas/formats/lib';
proc format lib=library;
 value jobfmt;
 103='mamager'
 105='test processor';
 111='assoc. text writer';
 113='senior. tech writer';
run;

Defining a Unique Format
Specifying Value Ranges
Referencing Your Formats
Assigning Your Formats to Variables

(p227)
lib library 'c:\sas\formats\lib';
proc format library=library fmtlib;
value jobfmt;
 103='manager';
 105='text processor';
run;


--------------------
SAS Base 8 Creating Enhanced List and Summary Reports

Selecting Variables
Selecting Observations
Defining Column Attributes
Specifying Column Widths
Defining the Split Character
Specifying Column Justification

(p247)

proc report data = flights.europe nowd;
 where dest in ('Lon','Par');
 column flight orig dest mail freight revenues;
 define revenue /format =dollar15.2
 define flight / width = 6 centre;
run;
--------------------
SAS Base 9

(p271)
proc means data=clinic.diabetes min max maxdec=0
 var age height weight;
run;


(p283)
proc format
value wtfmt low ='<<140'
140-180='140-180'
181-high='>180';
run;
proc freq data =clinic.diabets
tables sex*weight / nofreq norow nocol;
format weight wtfml.;
run;
--------------------
SAS Base 10

How ODS Works
Opening and Closing ODS Destination
ODS Destinations

Absolute URLs
Relative URLs
Changing the Appearance of HTML output
Specifying a Path for Output

ODS provides ways for customizsing
HTML output using style definitions.

Definitions are created using RPCO TEMPLATE

(p301)
ods listing close;
ods html body = 'f:\admit.html';
proc print data = clinic.admit label;
 var sex age heights weight actlevel;
 label actlevel='Activity Level';
run;
ods html close;
ods listing;

(p303)
proc tabulate data=clinic.stress2;
 var resthr maxhr rechr;
 table min mean, resthr maxhr rechr;
run;
ods html close;
ods listings
--------------------
SAS Base 11

Providing an Alternative Action
Creating and Modiffing Variables
Accumulating Totals

data clinc.stress;
 infile tests;
 ..
 if resthr<70 then delete;
 TotalTime=(time*60)+timesec;
 retain SumSec 5400;
 sumsec 5400;
 length TestLength $ 6;
 if totaltime >800 then TestLenght = Long
 else if
 else if totaltime <750 then TestLength='Short';
run;

Selecting Variables

=  eq Equal to
^= ne Not Equal to
> gt Greater than
< lt Less than
>= ge Greater than or equal to
<= le less than or equal to
in equal to one of the list

& and
| or
^ or - not

--------------------
SAS Base 12 Reading SAS Data Sets

Reading a Single Data Set
Selecting Variables
Reading Observations Using Direct ACCess
Detecting the End of a Data Set

Question 2
data catalog.fastordr(drop=ordrtime);
 set july.orders(keep=product units price_)
 if ordrtime<4;
 Total=units*price;
run;
--------------------
SAS Base 13

One to One Reading

Concatenating
Appending
Interleaving
Match-Merging
Compiling 
Executing
Renaming Variables
Selecting Variables
(p395)
data clinic.merged;
 merge clinic.demog clinic.visit;
 by id;
run;
proc print clinic.mergedl
run;

(p395)
data clinic.merged;
 merge clinic.demog(rename=(date=BirthDate)) 
       clinic.visit(rename=(date=VisithDate)) ;
 by id;
run;
proc print clinic.mergedl
run;


--------------------
SAS Base 14 

Use of SAS Functions
-create sample statistics
-create SAS data values
-convert U.S. ZIP codes to state postal codes
-round values
-generate random numbers
-extract a portion of the character value
-covert data from one type to another

General Forms of SAS Functions
Arguments Variables List s and Arrays

Coverting Data with Functions

Introduction
Potential Problems
Automatic Character to Numeric Conversion
When Automatic Conversion Occurs
Restriction of WHERE Expressions
Explicit Character-to-Numeric Comvervsion
Automatic Numeric-to-Character Conversion
Explicit Numeric-to-Character Conversion
Matching the Data Type

WEEKDAY Function
MDY Function
DATA and TODAY Function
INTCK Function
INTNX Function
DATDIF and YRDIF Function

(p460)
data work.after; 
 set work.before;
 Examples = int(examples);
run;
(p461)
data work.after; 
 set work.before;
 Examples = int(examples,.2);
run;

--------------------
SAS Base 15 Purpose of DO Loops

Syntax of Iterative DO Loops
DO Loop Execution
Counting Iterations of DO Loops
Decrementing DO Loops
Specifying a Series of Items
Nesting DO Loops
Iteratively Processing DATA that is read from a a data set
Conditionally Executing DO Loops
Using Conditional Clauses with the Iterative DO Statement
Creating Samples

(p482)
data work.invest;
 do year=1 to 20;
  Capital + 2000;
  capital + capital*0.10;
 end;
run;


Simple DO Loop
data=work.earn;
 value=2000;
 do years=1 to 20;
  Interest=values*0.75;
  value+interest;
 end;
run;


Chapter Quis Question 6

data = work.earn;
 Value=2000;
 do year =1 to 20;
  Interest=value*0.75;
  value+interest;
  output;
 end;
run;

--------------------
SAS Base 16 Processing Variables with Arrays

Creating 1-Dimensional Arrays
Expanding your use of arrays
The DIM Function


--------------------
SAS Base 17
Reading Raw Data in Fixed Filds
Review of Column Data
Identifying Non-Standard Numeric Data
Choosing an Input Style
Using Formatted Input
Using Informats
Record Formats
--------------------
SAS Base 18
Limitations of List Input

Reading Missing Values
Reading Missing Values at the End of te REcord
Reading Missing Values at the Beginning or Middle of a record

Specifying the Length of Chacaracter Values
The LENGTH Statement
--------------------
SAS Base 19

Numeric SAS Day Values: Number of Days since  Juanuary 1 1960
SAS time values are thenumber of seconds since midnight,

Informats
 DATEw.
 DATETIMEw.
 MMDDYYw.
 TIMEw.

TIMEw. reads time such as 17:00

Using Dates and Times in Calculations

Using Time and Date formats

--------------------
SAS Base 20
Creating a Single Observation from Multiple Records

A) Using Line
B) Reading Multiple Records Sequentially
C) Reading Multiple Records non-sequenially
D) Combining Line Pointer Controls

Number of Records Per Observation (p607)
Combining Line Pointers Controls (p611)
--------------------

SAS Base 21

More Efficient Programming (p630)
Creating Multiple Observationss from a single Recors
Reading the same number of repeating fields
Complete the DO WHILE Loop (p638)

--------------------

SAS Base 22
Reading Hierarchical Files

Raw data files can be hierarchical in structure, consisting of ea header records, and one or more 
detail records.


A) Creating One Observation Per Detail Record (p653)
B) 
C) Processing a DATA Step that creates OneObservation per header Records

Retaining the Values of a Varaible (p654)
Reading a DEtial Record (p655)
Reading a Detail Record (p655)
Dropping Variables (p656)
Determining the End of the External File (p664)
