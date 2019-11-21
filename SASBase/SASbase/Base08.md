SAS Base 8 Creating a default List report
===========================================
- Setting Variables
- Selecting Obervations
- Defining Column Attributes
- Defining Column Widths
- Specifying Column Spacing
- Overview of defining variables
- Using DEFINE statements
- Defining Variable Usage
- Defining Column Headings
- Defining the Split Character
- PROC REPORT uses variables
- Defining a Unique Format (p221)
- Specifying Values Ranges (p222)
- Defining Column Headings (p245)

Using order variables
using group variables

<hr>


<hr>

SAS Base 8 Creating Enhanced List and Summary Reports

Selecting Variables
Selecting Observations
Defining Column Attributes
Specifying Column Widths
Defining the Split Character
Specifying Column Justification
(p247)

<pre><code>
proc report data = flights.europe nowd;
 where dest in ('Lon','Par');
 column flight orig dest mail freight revenues;
 define revenue /format =dollar15.2
 define flight / width = 6 centre;
run;
</code></pre>


<hr>

<pre><code>
proc report data=flights.europe nowd headline headskip;
  where dest in ('Lon','PAR');
  column flight deswt mail freight revenue;
  define revenue / format =dollars15.2
  define flight / group 'Flight/Number' width=6 center;
   

</code></pre>


Chapter 8
- Defining Variables(p240)
- Using `DEFINE` Statements (p241)
- Defining Column attributes (p242)
- Assigning formats(p242)

<pre><code>
proc report data=flights.europe nowd;
 where dest in (‘Lon’, ‘Par’);
Column flight orig dest mail freight revenue;
define revenue/ format =dollar15.2;
run;
</code></pre>

- Specifying Column Width (p243)
- The variables length for character variables
- 9 for numeric values
- Defining Column Headings (p245)
- Defining the Split Character (p246)
- Specifying Column Justification (p247)
- Enhancing the heading’s appearance (p248)
- Defining Variable Usage (p249)

How **PROC REPORT** uses Variables (p249)
Using Order Variables (p249)

<pre><code>proc report data=flights.europe nowd headline headskip;
 where dest in (‘Lon’, ‘Par’);
column flight orig dest mail freight revenue;
define revenue/ format =dollar15.2;
define flight /order=descending ‘Flight/Number’ width=6 center;
define orig /  width=6 spacing = 5, ‘Flight/Origin’ center;
define dest /  width=11 spacing = 5, ‘Flight/Destination’ center;
run;
</code></pre>

 
Using Group Variables (p251)
Revising the Report (p252)
Specifying Statistics (p253)
#### Chapter Summary (p257)
 
-     Creating a default list
-     Selecting Variables
-     Selecting Observations
-     Defining Variables
-     Defining Column Attributes
-     Enhancing the Heading’s appearances
-     Defining variable usage
-     Specifying statistics

 
<pre><code>proc report data=clinic.diabetes nowd;
 column sex weight fastgluc postgluc glucrange;
where age >40;
define weight
define sex / order width =7 spacing =4 center ‘Sex of Patient’;
define fastgluc / ‘FastingGlucose’;
compute glucrange;
glucrange=postgluc.sum-fastgluc.sum;
endcomp;
run;
</code></pre>
