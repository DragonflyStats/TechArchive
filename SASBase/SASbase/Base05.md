SAS Base 5 Creating SAS Data Sets from Raw Files
================================================

Chapter 5 
Raw Data Files (p137)
A raw data file is an external file whose records contain data values that are organized in fields. Raw data fields are non-proprietary and can be read by a variety of programs.

Referencing a SAS library (p139)
Reference a SAS Library
LIBNAME Statement
 
Reference an external File
FILENAME statement
 
 
<hr>
<p>Using a LIBNAME statement</p>

<pre><code>..
libname taxes ‘C:/Directory’;
..
</code></pre>


Referencing a Raw Data File (p140)
Defining a fully qualified Filename (p141)
Defining an Aggregate Storage Location (p141)
Referencing a Fully Qualified Filename (p141)
Writing a Data Step Program (p142)


Naming the Data Step (p142)
Specifying the Raw data Film (p143)
Column Input (p144)
Standard and Nonstandard Numeric Data (p144)
Fixed-Field Data (p144)


Specifying Variable Names (p146)

### SAS Naming Conventions
- Must be 1 to 32 characters in length
- Must be begin with a letter or underscore
- Can continue with any combination of numbers, letters or underscores
<hr>
Raw data can be organized in several different ways
Submitting the DATA Step (p147)
Verifying the Data Step (p147)
<hr>

<pre><code>
data sas.user.stress;
 	infile tests obs=10;
     input ID 1-4 Name $ 6-25
       	RestHR 27-29 MaxHR 31-33
       	RecHR 35-37 TimeMin 39-40
       	TimeSec 42-43 Tolerance $ 45;
run;
</code></pre>

Listing the Data Set (p148)
Reading the Entire Raw Data filme (p149)
Invalid Data (p150)
Creating and Modifying Variables (p151)
SAS Expressions (p152)
Using Operators in SAS Expressions (p152)
Date Constants (p154)
Subsetting Data (p155)
Reading Instream Data (p156)
Creating a Raw Data File (p157)
Reading in Windows Excel Data (p161)
Referencing an Excel Workbook (p163)
The IMPORT wizard (p178)
Raw Data Files
Referencing a raw data file
Writing a DATA step program
Creating and modifying variables
Subsetting data 
Reading instream data
Reading Microsoft Excel da
LIBNAME statement options

SAS Base 5
p153


<pre><code>

data sas.user stress;
infile tests;
input ID 1-4 Name $ 6-25 $ RehsHR
Tolerance $ 45;
TotalTime = (timemin*60)+timeset;
run;
</code></pre>



<p>Page 155</p>

<pre><code>
data sas.user stress;
infile tests;
..
if tolerance='D';
TotalTime = (timemin*60)+timeset;
run;

</code></pre>




<p>(p176)</p>

<pre><code>libname clinic 'c:/bethesda/patients\admit';
 filname admit 'c:/bethesda/patients\admit';
data clinic.admittan;
 infile admit obs=5;
 input ID 1-4 Name $6-25 RestHR 27-29 MAXhr 31-33
 if tolerance ='D';
 TotalTime=(timemin*60) + timesec;
run;
proc print data=clinic.admittan;
run;

</code></pre>



LIBNAME and FILENAME statements are global. librefs and filerefs remain ine ffects
until you change them, cancel then or end o SAS session.
For each field of raw data then you read into your data set, you must specify
the following in the `INPUT` statement: a valid SAS statement
a starting column and if necessary column,.
Column input is appropriate only in some
situations.

