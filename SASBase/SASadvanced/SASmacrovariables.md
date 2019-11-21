

SAS Macro Variables

**Ordinary Code**
<pre><code>
title "Total Sales for 2002";
data perm.sales 2002;
   set perm.sales;
   if year(enddate)=2002;
run;
proc print data=perm.sales2002;
run;
</code></pre>

**Using Macro Variables**
<pre><code>
% let year = 2002;
title "Total Sales for &year";
data perm.sales &year;
   set perm.sales;
   if year(enddate)=&year;
run;
proc print data=perm.sales&year;
run;
</code></pre>


The value of the macro variable is inserted in the program, so you can make one change to update the entire program
Types of Marco Variables
 - Automatic Macro Variables
 - User Defined Macro Variables

<pre><code>
 % let city = DALLAS;
 % datae = 05JAN2014
 % amount = 975
</code></pre>
