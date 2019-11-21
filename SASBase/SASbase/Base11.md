SAS Base 11 Creating and Managing Variables
-------------------------------------------
- Assigning Values Conditionally (p321)
- Subsetting Data (p327)
- Assigning Permanent labels and formats (p331)
- Grouping Statements using DO groups (p335)

- Providing an Alternative Action
- Creating and Modiffing Variables
- Accumulating Totals

<hr>
How is the variable Amount labeled and formatted in the PROC PRINT output?
<pre><code>
data credit;
   infile creddata;
   input Account $ 1-5 Name $ 7-25 Type $ 27
         Transact $ 29-35 Amount 37-50;
   label amount='Amount of Loan';
   format amount dollar12.2;

run;
proc print data=credit label;
   label amount='Total Amount Loaned';
   format amount comma10.;
run;
</code></pre>
- a. label Amount of Loan, `format DOLLAR12.2`

- b. label Total Amount Loaned, format `COMMA10`.

- c. label Amount, default format

- d. The `PROC PRINT` step does not execute because two labels and two formats are assigned to the same variable.

Correct answer:	b
The `PROC PRINT` output displays the label Total Amount Loaned for the variable Amount and formats this variable using the `COMMA10`. format. Temporary labels or formats that are assigned in a `PROC` step override permanent labels or formats that are assigned in a `DATA` step.
<hr>


<pre><code>
data clinic.stress;
   infile tests;
   
   if resthr<70 then delete;
   TotalTime =(time*60)+timesec;
   retain SumSec 5400;
   sumsec 5400;
   length TestLength $ 6;
   if totaltime >800 then TestLenght = Long
   else if
   else if totaltime <750 then TestLength='Short';
run;
</code></pre>

<pre><code>
data clinic.stress
  infile tests;
   input ID $1-4 Name$ 6-25 RestHR 27-29 MaxHR 31-33 
   RestHR 35-37 TimeMin 39-40 TimeSec 42-43
   Tolerance $ 45;
 TotalTime=(timemin*60)+timesec;
 sumsec+totaltime;
run;
</code></pre>

Assigning Values Conditionally (Page 321)

`IF expression THEN condition`

- `expression` is any valid SAS expression
- `statement` is any executable SAS statement

<hr>
Modifying Variables
Accumulating Totals

<pre><code>
data clinic.stress
   infile tests
   input ID $ 1-4 name $6-25 
   ...
   retain SumSec 5400;
run;
</code></pre>

Providing an Alternative Actions
Specifying Length for Variables
Subsetting Data
Deleting Unwanted Observations

Selecting Variables (Page 326)
- `DROP=`
- `KEEP=`
<hr>
### Selecting Variables


=
^=
>
<
>=
<=
eq
ne
gt
lt
ge
le
in
Equal to 
Not Equal to 
Greater Than
Less Than
Greater than or equal to
less than or equal to
equal to one of the list

in 
& and
| or
^ or - not

