SAS Base 17 : Reading In Raw Data In Fixed Fields
=================================================

### Sections
1. Review of Column Input
2. Identifying Non-standard Numeric Data
3. Choosing an Input Style
4. Using Formatted Input
5. Using Informats
6. Record Informats
<hr>
%------------------------------------------------------------------- 17 --%
\newpage
\section{SAS Base 17: Reading Raw Data in Fixed Fields}



Using Formatted Input
Choosing an Input Style

SAS Base 17
- Reading Raw Data in Fixed Filds
- Review of Column Data
- Identifying Non-Standard Numeric Data
- Choosing an Input Style
- Using Formatted Input
- Using Informats
- Record Formats
- 
<hr>

#### Reading Non Standard Numeric Data (page 535)

- blanks, commas, dashes, dollar signs, percent signs, right parentheses, left parentheses

 
<hr>

Chapter 17 Reading Raw Data in Fixed Fields
- Using Formatted Input (p530)
- Using the @n Column Pointer Control(p530)
- DATA Step Processing of Informats (p537)
<hr>
### Reading fixed formatted data instream

Fixed formatted data can also be read instream. Usually, because there are no delimiters (such as spaces, commas, or tabs) to separate fixed formatted data, column definitions are required for every variable in the dataset. That is, you need to provide the beginning and ending column numbers for each variable. This also requires the data to be in the same columns for each case. For example, if we rearrange the cars data from above, we can read it as fixed formatted data:
<pre><code>
DATA cars2;
  INPUT make $ 1-5 model $ 6-12 mpg 13-14 weight 15-18 price 19-22;
CARDS;
AMC  Concord2229304099
AMC  Pacer  1733504749
AMC  Spirit 2226403799
BuickCentury2032504816
BuickElectra1540807827
;
RUN;

TITLE "cars2 data";
PROC PRINT DATA=cars2(obs=5);
RUN; 
</code></pre>
The benefit of fixed formatted data is that you can fit more information on a line when you do not use delimiters such as spaces or commas. 

Here is the output produced by the proc print statement above.
<pre><code>
cars2 data            

OBS    MAKE      MODEL     MPG    WEIGHT    PRICE
1     AMC      Concord     22     2930      4099
2     AMC      Pacer       17     3350      4749
3     AMC      Spirit      22     2640      3799
4     Buick    Century     20     3250      4816
5     Buick    Electra     15     4080      7827
</code></pre>
