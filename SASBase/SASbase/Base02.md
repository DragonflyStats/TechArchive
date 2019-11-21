SAS Base 2 : Referencing Files and Setting Options
====================================================
Chapter 2
### Sections
1. Viewing SAS Libraries
2. Specifying Result Formats
3. Setting System Options
4. Additional Features

<hr>

Chapter 2
Defining Libraries (p39)
Assigning LibRefs (p39)
Verifying Librefs (p40)
Specifying Two Level Names(p41)
Referencing Files in Other Formats (p42)

<hr>

#### Assigning Librefs (Page 39)
to define libraries, you can use a `LIBNAME` statement. You can store the `LIBNAME` statement with any SAS program so that the SAS data library is assigned each time the program is submitted.


A SAS engine is a set of internal instructions that SAS uses for writing to and reading from files in a SAS library.


#### Verifying Librefs
How Long Libref remain in effect (Page 41)

#### Specifying Two Level Names (page 41)

<hr>

Specifying Engines (p42)
Specify the engine name in the LIBNAME statement
Interface Library Engines (p42)
Engine
 



- BMDP allows read only access to BMDP files
- OSIRIS allows read-only access to OSIRIS files
- SPSS allows read-only access to SPSS files

SAS/Access Engines (p43)
- Relational Databases:  Oracle, Sybase, Informix, ODBC
- Non-relational Databases: CA-IDMS
-PC Files: Excel
<hr>
Viewing SAS Libraries (p43)
- Viewing the Contents of a SAS Library (p45)
- Using PROC DATASETS (p47)
- Specifying Results Formats(p48)
- The results Tab of the preference window
- Internal Browser vs Preferred Web Browser (p50)
- Internal Browser (p50)
The results Viewer is displayed as a SAS window.
Preferred Web Browser (p51)
<hr>
#### Setting System Options (p51)
- Line size
- Page size
- The display of page numbers
- The display of date and time

By default page numbers and dates appear with the output.
The following options suppress the printing of both pagenumbers and time and date in the listing output.

<pre><code>

options nonumber nodate
proc print data=clinic.admit; 
  var id sex age height weight;
  where age >=30;
run;

options date;
proc freq data=clinic.diabetes;
  where fastglus >=300;
  tables sex;
run;  

</code></pre>



<pre><code>
options number linesize=64;
proc print data = flights.europe;
run;
</code></pre>
<hr>

How four-digit years are handed(p56)

The value of the `YEARCUTOFF=` system option affects only two-digit year values

Using System Options to specify observations (p56)

-         FIRSTOBS=
-         OBS=

Using `FIRSTOBS=` and `OBS =` for specific data sets (58)

<pre><code>
options firstobs=10 obs=15;
proc print data=sasuser.heart;
run;
</code></pre> 

The SAS System Options Window (p59)
Finding Options Quickly (p60)
         Referencing SAS files in SAS Libraries
         Viewing Librefs
         Viewing the contents of a library
         Viewing the contents of a File
         Listing the contents of a library
         Specifying Results Formats
         Setting System Options

<hr>
### PROC DATASETS
The DATASETS procedure is used to manage SAS datasets. With this procedure, you can list, change, append, and repair datasets and create and maintain indexes. Incorporated within the DATASETS procedure are all of the capabilities of the APPEND, CONTENTS, and COPY procedures. 

Procedure commands execute with a RUN command or upon the entry of a DATASETS command. The procedure remains active until another procedure, dataset statement, or QUIT command is executed.
Unless specified, all DATASETS commands work on datasets found in the temporary work library. To affect a different library, use the LIBRARY option to specify a library name.
<pre><code>
LIBNAME input ‘SAS-data-library’;
PROC DATASETS LIBRARY=input;
DATASETS commands
RUN;
</code></pre>
