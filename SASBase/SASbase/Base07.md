SAS Base 7
============

### Sections
1. Introduction to Proc Format
2. Dfining a Unique Format
3. Associating User Defined Formats with Variables.

<hr>
### Introduction to PROC FORMAT

The DATASETS procedure is used to manage SAS datasets. With this procedure, you can list, change, append, and repair datasets and create and maintain indexes. Incorporated within the DATASETS procedure are all of the capabilities of the APPEND, CONTENTS, and COPY procedures. Procedure commands execute with a RUN command or upon the entry of a DATASETS command. The procedure remains active until another procedure, dataset statement, or QUIT command is executed.
Unless specified, all DATASETS commands work on datasets found in the temporary work library. To affect a different library, use the LIBRARY option to specify a library name.
<pre><code>
LIBNAME input ‘SAS-data-library’;
PROC DATASETS LIBRARY=input;
DATASETS commands
RUN;
</code></pre>
Invoking PROC FORMAT
Permanently Storing Your Formats
(p224)


<p>This is a normal paragraph:</p>

<hr>
### Creating SAS Data Sets from Raw Files

<pre><code>libname library 'C:/sas/formats/lib';
proc format lib=library;
 value jobfmt;
 103='mamager'
 105='test processor';
 111='assoc. text writer';
 113='senior. tech writer';
run;
</code></pre>
#### Defining a Unique Format
Specifying Value Ranges
Referencing Your Formats
Assigning Your Formats to Variables
(p227)


<p>This is a normal paragraph:</p>

<pre><code>lib library 'c:\sas\formats\lib';
proc format library=library fmtlib;
value jobfmt;
 103='manager';
 105='text processor';
run;
</code></pre>
<hr>


#### Specifying Value Ranges (page 222)
<pre><code>
proc format lib=library;
   value agefmt;
      0-<13=`child`;
      13-<20=`teenager`;
      20-<65=`adult`;
      65-100=`senior citizen`;
`run;
</code></pre>

<hr>
Chapter 7 Creating and Applying User-Defined Formats
- Introduction to PROC FORMAT (p218)
- Invoking PROC FORMAT (p219)
- Defining a uniqueformat (p220)
- Defining a Unique Format (p221)
- Specifying Values Ranges (p222)

