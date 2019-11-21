SAS Base Chapter 6
=============================
Chapter 6
### Sections
1. Writing Basic DATA Steps
2. How SAS processes programs
3. Compilation Phase
4. Execution Phase
5. Debugging a DATA step
6. Testing your own programs

<pre><code>
data perm.update;
    infile invent;
     input Item $1-13 IDnum 15-19
     Instock 21-22 BackOrd 24-25;
    Total=instock+backord;
run;
</code></pre>

- Writing Basic SAS Steps (p185)
- How SAS Processes Program (p186)
- Data Set Variable (p187)
- Compilation Phase (p187)
- Descriptor Portion of the SAS Data Set (p188)
<hr>

<p>(p189)</p>

<pre><code>data perm.updata
 infile invent;
 input item $1-13 IDnum $15-19
 Instock 21-22 Back Ord 24-25;
 Total=instock_backord;
run;
data perm.update;
 infile invent;
 input Item $ 1-13 $IDnum $ 15-19  Instock 21-- BackOrd 24-25;
 Total=Instock+backord;
run;
</code></pre>


<p>Writing a NULL Data Set</p>

<pre><code>data _null_;
 infile invent;
 input Item $ 1-13 $IDnum $ 15-19  Instock 21-- BackOrd 24-25;
  Total=Instock+backord;
run;
</code></pre>

<hr>



How SAS Processes Program
Program Data Vector
Syntax Checking
Data Set Variable
(p192)
<p>This is a normal paragraph:</p>

<pre><code>data perm.update;
   infile invent;
   input Item $ 1-13 IDnum $ 15-19
 Instock 21-22 BackOrd 24-25
   Total=instock+backord;
run;

</code></pre>





<hr>

The descriptor portion of the data set includes
- The name of the data set
- The number of observations and variables
- The names and attributes of the variables

Summary of the Compilation Phase (p189)
Initializing Variables (p191)
Input Data (p192)
The `INFILE` statement identifies the location of the raw data.

#### Input Pointer (p192)
When an INPUT statement begins to read data values from a record that is held in the input buffer, it uses an input pointer to keep track of its position.

End of the Data Step (p194)
- Exceptions variables that are named in a RETAIN statement
- Variables that are created in a sum statement
- Data elements in a _TEMPORARY_ array
- Any variables that are created with Options in the FILE or INFILE statements
- Automatic Variables
 
Iterations of the DATA Step (p196)
The Data Step works like a Loop, repetitively executing statements to read data values and create observations one by one.
End of File Marker (p199)
The execution phases continues until the end of file marker is reached.

<hr>
Summary of the Execution Phase (p200)
-  Variables are initialised
-  Each statement is executed sequentially
-  Other statements can be further modify the current observations
-  Program flow is returned to the top of the data step
-  The data step is executed until the end of file marker is reached in the external file.

<hr> 
- End of the Execution Phase (p201)
- Diagnosing Errors in the Compilation Phase (p201)
- Diagnosing Errors in the Execution Phase (p202)
- Validating and Cleaning Data (p205)
- Cleaning the data (p208)
- PUT statements (p209)
- Character Strings (p210)
- Data Set Variables (p210)
- Conditional Processing (p211)

