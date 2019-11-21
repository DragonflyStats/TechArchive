SAS Base 12 Reading SAS Data Sets
============================================
Chapter 12 Reading SAS Data Sets
Reading observations using direct access (p353)
Writing Observations Explicitly (p354)
Detecting The End of the Data Set (p355)


- Reading a Single Data Set
- Selecting Variables
- Reading Observations Using Direct ACCess
- Detecting the End of a Data Set
<hr>
<pre><code>
proc sort data=company.ue out=work.temp;
  by dept;
run;
data company.budget(keep=dept payroll);
   set work.temp;
   by dept;
   if wagecat='S' then Yearly=wagerate*12;
   else if wagecat='H' then Yearly=wagerate*2000;
   if first.dept then payroll=0;
   payroll+yearly;
   if last.dept;
run;
</code></pre>

<pre><code>

proc print data=company.budget noobs;
   sum payroll;
   format payroll dollar12.2;
run;
</code></pre>

Finding the first and Last Observations in Subgroups




Writing Observations Explicitly


More Complex Ways of Using Direct Access

#### Detecting the End of a data Set (Page 355)

#### Understanding how data sets are read
- Compilation Phase
- Execution Phase

#### Additional Features (Page 365)

-specify addtional data set options
- process variables in arrays
- use SAS Functions
<hr>
<p>Question 2</p>

<pre><code>
data catalog.fastordr(drop=ordrtime);
   set july.orders(keep=product units price_)
   if ordrtime < 4;
   Total=units*price;
run;

</code></pre>

<hr>
If you submit the following program, which variables appear in the new data set?
<pre><code>
data work.cardiac(drop=age group);
   set clinic.fitness(keep=age weight group);
   if group=2 and age>40;
run;
</code></pre>

- a. none
- b. Weight
- c. Age, Group
- d. Age, Weight, Group

Correct answer:	b
The variables Age, Weight, and Group are specified using the `KEEP=` option in the SET statement. After processing, Age and Group are dropped in the DATA statement.
