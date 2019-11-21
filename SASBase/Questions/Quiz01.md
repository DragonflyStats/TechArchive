
#### Question 3
What type of variable is the variable ***AcctNum****

a. numeric
b. character
c. can either be character or numeric
d. Can't tell from data shown

<hr>
The following SAS program is submitted:

<pre><code>
data test;
set sasuser.employees;
if 2 le years_service le 10 then
amount = 1000;
else if years_service gt 10 then
amount = 2000;
else
amount = 0;
amount_per_year = years_service / amount;
run;
</code></pre>


Which one of the following values does the variable ***AMOUNT_PER_YEAR*** contain if an employee has been with the company for
one year?
- A. 0
- B. 1000
- C. 2000
- D. . (missing numeric value)
<hr>
The Answer will be D as amount will be 0 and the ***per_year*** should be calculated only if amount *ne 0*. Asuming the variable name are valid.
