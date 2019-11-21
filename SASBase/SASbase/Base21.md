SAS Base 21:  Creating Multiple Observations from a Single Record
-----------------------------------------------------------------

1. Reading Repeating Blocks of Data
2. Repeating the Same Number of Repeating Fields
3. Repeating a Varying Number of Repeating Fields
 
<hr>

#### Reading Repeating Blocks of Data
 
holding the Current Record with a Line-Hold Specifier


<hr>

- More Efficient Programming (p630)
- Creating Multiple Observationss from a single Records
- Reading the same number of repeating fields
- Complete the DO WHILE Loop (p638)

<hr>
### More Efficient Programming (p630)

SAS will read into working memory all the variables on the auto file, deleting the unwanted variables only when it writes out the new file auto2. This means that all the variables on the input file are available for SAS to use during the program. However, it also means that SAS will be working with a larger data set than may be necessary. An alternate way to control the selection of variables is to use SAS data step options, which specifically control the way variables are read from SAS files and/or written out to SAS files, resulting in more efficient use of computer resources.


<hr>
### Complete the DO WHILE Loop (p638)
<hr>
### Chapter Summary
- File Formats
- Reading Replicate Blocks of Data
- Reading the same number of repeating fields
- Reading a varying number of repeating fields
 

<pre><code>
data perm.sales97;
   infile data97 missover;
   input ID $ sales : comma. @;
   Quarter=0
do while (sales ne .);
   quarter+1;
   output; 
   input sales : comma. @;
end;
run;   


</code></pre>


