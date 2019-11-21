Quiz 12

#### Question 1

<pre><code>
data work.cardiac(drop=age group);
  set clinic.fitness (keep=age weight group);
  if group=2 and age >40;
run;
</code></pre>

If you submit the following program, which variables appear in the new data set?

a. none
b. Weight
c. Age, Group
d. Age, Weight, Group

#### Question 2

Which of the following programs correctly reads the data set Orders and creates
the data set FastOrdr?
<pre><code>
data catalog.fastorder(drop=ordrtime);
   set july.orders(keep=product units price);
   if ordrtime<4;
   Total=units*price;
run;
</code></pre>

#### Question 4

There are 500 observations in the data set USA. What is the result of submitting the following 
program?
<pre><code>
data work.getobs5(drop=obsnum);
   obsnum=5;
   set company.usa(keep=manager payroll) point=obsnum;
   stop;
run;
</code></pre>

a. an error
b. an empty data set
c. continuous loop
d. a data set that contains one observation

#### Question 7

a. You can not specify END= with POINT=.
b. You can not specify OUTPUT with POINT=.
c. You can not specify STOP with END.
d. You can not specify FIRST with LAST.


#### Question 9
At the start of the DATA step processing, during the compilation phase,variables are created
in the program data vector (PDV), and observations are set to
a. blank
b. missing
c. 0
d. there are no observations

#### Question 10
The DATA step executes

a. continuously if you use `POINT=` option and the STOP statement.
b. once for each variable in the output data set.
c. once for each observation in the input data set.
d. until it encounters an OUTPUT statement.
