SAS Base 20: Creating a Single Observation from Multiple Records
===============================================================
- A. Using Line
- B. Reading Multiple Records Sequentially
- C. Reading Multiple Records non-sequenially
- D. Combining Line Pointer Controls
<hr>
- Using Dates and Times In Calculations (p588)
- Using Data and Time Formats (p592)
- Number of Records Per Observation (p607)
- Combining Line Pointers Controls (p611)
- Creating a Single Observation from Multiple Records

<hr>
- Using Line Pointer Controls
- Reading Multiple Records Sequentially
 - using the / LinePointer Control
- Sequential Processing of Multiple Records in the Data Step

*Page 605* 
<pre><code>
data perm.members
   infile memdata;
   input Fname$ Lname $ /
   Address $1-20/
   City & $10. State $ Zip $;
run;
</code></pre>

Reading Multiple Records Non-Sequentially

Execution of the DATA Step (page 610)

Combining Line Pointer Controls (page 611)
