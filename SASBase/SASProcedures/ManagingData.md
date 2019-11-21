SAS Tutorial 2: Managing Data
======================================
- Comment Statements
- Data Entry in SAS

### Comment Statements
It is good programming practice to place comments in your codes for documentation purposes. Statements enclosed in /* ……… */ are ignored by
SAS upon executing a program e.g.
/* This is a comment */
/* So is this */
/* This comment
spans several lines */

### Data Entry in SAS
Before you can work with your data in SAS, it must be in a special form called a SAS dataset. 

Importing a data set

<pre><code>
data datasetname;
infile "C:\filename.txt" firstobs=2;
input var1 var2 var3 var4 var5 $ ;
run;
</code></pre>

- The semicolon ";" should be at the end of each of the statements.

- The first line of the portion of code above indicates to SAS you want to generate a SAS dataset called datasetname. Use an appropriate name for
SAS datasets you create e.g. trial, company, drug – a name with 32 or fewer characters.

- The INFILE command indicates the file that the data can be retrieved from and is of the form “pathname\filename”.

- It is good programming practice to indent lines between the data statement and the run statement.

- To execute any series of commands or statements within SAS you must include a RUN statement.

- The firstobs=2 command lets SAS know that the first observation for this data occurs in row 2 of the text file .Row 1 of the text file contains the
variable labels.

- The INPUT statement provides SAS with details of the variables contained within the file: here, this dataset contains 5 variables.
The $ sign following the final variable "var5" indicates that this is an alphanumeric variable.

- Variable names can contain from 1-32 characters. They can contain numbers, but names must begin with a letter.
