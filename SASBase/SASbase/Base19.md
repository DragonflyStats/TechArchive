SAS Base 19: Reading Date and Time Values
===========================================


Chapter 19
1. How SAS stores Date Values
2. How SAS stores time values
3. More about SAS date and time values
4. Reading Dates and Times with Informats
5. Using Dates and Times in Calculationss
6. Using Date and Time Format

<hr>

Numeric SAS Day Values: Number of Days since  Juanuary 1 1960
SAS time values are thenumber of seconds since midnight,

#### Informats
- DATEw.
- DATETIMEw.
- MMDDYYw.
- TIMEw.
 
<hr>
TIMEw. reads time such as 17:00
Using Dates and Times in Calculations
Using Time and Date formats

<hr>
Chapter 19
- Modifying List Input (p560)
- Using the `&` Modifier with a LENGTH Statement (p561)
- Reading Nonstandard Values (p562)
- Creating Free-Format Data (p565)
- Specifying a Delimiter (p566)
- Using DSD Options (p566)
- Mixing Inputs Styles (p569)

<pre><code>
options yearcutoff =1920;
data perm.aprbills;
   infile aprdata;
</code></pre>  


