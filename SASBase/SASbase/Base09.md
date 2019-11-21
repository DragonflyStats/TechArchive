SAS Base 9: Producing Descriptive Statistics
-----------------------------------

- 1. Computing Statistics using PROC MEANS
- 2. Selecting Statistics
- 3. Limiting Decimal Places
- 4. Specifying Variables in PROC MEANS
- 5. Group Processing using the CLASS Statement
- 6. Group Processing using the BY Statement
- 7. Creating a summarized data set using PROC MEANS
- 8. Creating a summarized data set using PROC SUMMARY
- 9. Producing Frequency Tables using PROC FREQ
- 10. Specifying Variables in PROC FREQ
- 11. Creating Two-Way Tables


### PROC MEANS

The default statistics produced by PROC MEANS are n-count,mean, maximum,minimum and standard deviation.

To specify variables to be analysed and included in the output, add a VAR statement and alist of the variable names 
VAR varname1 varname 2;


### PROC SUMMARY


### PROC FREQ
By default, PROC FREQ creates a table of frequencies and percentages for both numeric and character variables. Frequency distributions work best with variables that contain categorical variables.

Specifying Variables in PROC FREQ
Creating Two-Way Tables
Determining the Table Layout
Surpressing Table Information


(p271)
<pre><code>
proc means data=clinic.diabetes min max maxdec=0
    var age height weight;
run;

</code></pre>



(p283)
<pre><code>
proc format
value wtfmt low ='<<140'
140-180='140-180'
181-high='>180';
run;
proc freq data =clinic.diabets
tables sex*weight / nofreq norow nocol;
format weight wtfml.;
run;
</code></pre>


Computing statistics using PROC Means (p267)
Descriptive Statistics (p269)
<hr>
Creating Two Way Tables (Page 279)
- PROC FREQ can be used to create two-way tables
- Syntax : `tables var1*var2 ;`

Creating N-Way Tables (page 280)
- PROC FREQ can be used to create N-way tables
- A Series of 2 way tables are produced
- Syntax : `tables var1*var2*var3 ;`

