SAS Chapter 1 : Basic Concept
===============================================

- Descriptor Portion (p13)

The descriptor portion of a SAS data set contains information about the data set, including
 - the name of the data set
 - the date and time that the data set was created
 - the number of observations
 - the number of variables



- Data Portion (p13)

The Data Portions of a SAS data set is a collection of data values that are arranged in a rectangular table.
 
 - Observations (Rows)
 - Variables (Columns)
 - Missing Variables
 - 
- Variable Attributed (Page 14)
  - Name
  - Type
  - length
  - Format
  - Informat 
  
- Features of a SAS Window (p19)
- Issuing Commands (p20)
- Using Pop-Up Menus (p21)
 - Context Sensitive
- Getting Help (p21)
- Customizing Your SAS Enviroment (p22)
- The Explorer Window (p22)
- Core Editing Window (p23)
- Clearing the Editor (p24)
- Clearing the Editor (p25)
- The Log Window (p25)
- The output Windows (p25)
- The Results window (p26)
 
<hr>

Creating SAS files (p27)
- Sashelp
- Sasuser
- Work
Referencing SAS files (p31)

<hr>

###SAS Libraries

What is a SAS Library? A collection of SAS files, such as SAS data sets or catalogues.
Chapter Summary
- Components of SAS Programs
- Characteristics of SAS Programs
- Processing SAS Programs
- SAS Libraries
- Referencing SAS files
- SAS Data Sets
- Variable Attributes
- Using the main SAS Windows





###Introduction to SAS System Libraries
Four special SAS-supplied libraries provide convenience, support, and customization capability:
- WORK
- USER
- SASHELP
- SASUSER

####WORK Library

The WORK library is the temporary (scratch) library that is automatically defined by SAS at the beginning of each SAS session. The WORK library stores two types of temporary files: those that you create and those that are created internally by SAS as part of normal processing. Typically, the WORK library is deleted at the end of each SAS session if the session terminates normally.

<hr>

SAS Programs

SAS Libraries
- Referencing SAS Files
- SAS Data Sets
- Using the Programming Workspace
- Referencing SAS Files
- Two-Levels Names
- Referencing Temporary SAS Files
- Referencing Permanent SAS Files
- Rules for SAS Names
- SAS Data Sets
- Overview of Data Sets (p12)
- Descriptor Portions (p13)
<hr>
Data Portion (p13)
Observations(Rows) (p13)
Variables (Columns) (p14)
- Missing Values (p14)
- Variable Attributed (p14)
- Name (p15)
- Type (p15)
- Length (p16)
- Format (p16)
- Informat (p17)
- Label (p18)

<hr>
Using the Programming Workspace 
Using the Main SAS Package
Features of SAS Windows
Minimizing and Restoring Windows
Docking and Undocking Windows
Issuing Commands
Using Pop-Up Menues
Getting Help

<hr>
### Recognizing Default Values
In the following example, numeric data for male verbal and math scores is missing for 1972. Character data for gender is missing for math scores in 1975. By default, SAS replaces a missing numeric value with a period, and a missing character value with a blank when it creates the data set.

<pre><code>
 options pagesize=60 linesize=80 pageno=1 nodate;

libname admin 'SAS-data-library';
data admin.sat_scores2;
   input Test $ 1-8 Gender $ 10 Year 12-15 SATscore 17-19;
   datalines;
verbal   m 1972 .
verbal   f 1972 529
verbal   m 1975 515
verbal   f 1975 509  
math     m 1972 .
math     f 1972 489
math       1975 518
math       1975 479
;
run;
</code></pre>

<pre><code>
Using PROC PRINT
proc print data=admin.sat_scores2;
   title 'SAT Scores for Years 1972 and 1975';
run;
</code></pre>

The following output shows the results:
Default Display of Missing Values
<pre><code>
                       SAT Scores for Years 1972 and 1975                      1

                  Obs     Test     Gender    Year    SATscore

                   1     verbal      m       1972         .  
                   2     verbal      f       1972       529  
                   3     verbal      m       1975       515  
                   4     verbal      f       1975       509  
                   5     math        m       1972         .  
                   6     math        f       1972       489  
                   7     math                1975       518  
                   8     math                1975       479  
</code></pre>
