Chapter 13 Combining SAS Data Sets
===================================
#### Sections
1. One-to-One Reading
2. Concatenating
3. Appending
4. Interleaving
5. Match-Merging
6. Match-Merge Processing
7. Renaming Variables
8. Excluding Unmatched Observations
9. Selecting Variables
10. Additional Features
<hr>


- One to One Reading (p375)
- Match-merging (p386)
- Match-Merge Processing (p390)
- Renaming Variables (p395)
- Excluding Unmatched Variables (p397)

SAS Base 13

One to One Reading (p375)
Concatenating (p378)
Appending (p380)
Interleaving (p384)
Match-merging (p386)
Renaming Variables (p399)
<hr>
#### Match-Merging
Merging with a BY statement enables you to match observations according to the values of the BY variables that you specify. Before you can perform a match-merge, all data sets must be sorted by the variables that you want to use for the merge.
<hr>

One to One Reading
Concatenating
Appending
Interleaving
Match-Merging
Compiling
Executing
Renaming Variables
Selecting Variables
(p395)
<hr>

<pre><code>data clinic.merged;
merge clinic.demog clinic.visit;
by id;
run;
proc print clinic.mergedl
run;
</code></pre>


(p395)
<hr>
<pre><code>data clinic.merged;
merge clinic.demog(rename=(date=BirthDate))
  	clinic.visit(rename=(date=VisithDate)) ;
by id;
run;
proc print clinic.mergedl
run;
</code></pre>
