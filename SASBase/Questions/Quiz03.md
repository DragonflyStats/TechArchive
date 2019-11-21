
#### Question 5

Suppose you run a program that causes three DATA step errors. What is the value
of the automatic variable "_ERROR_" when the observation that contains the 
third error is processed.

a. 0
b. 1
c. 2
d. 3

#### Question 7
<pre><code>
data perm.update
  infile invent;
  input IDnum $ Item $ 1-13 Instock 21-22
        Backord 24-25;
  Total=instock+backord;
  run;
</code></pre>
