SAS Base 16 Processing Variables with Arrays
============================================

### Sections 
1. Creating 1-Dimensional Arrays
2. Expanding your use of arrays
3. Additional Features

<hr>
### The DIM Function
The DIM function returns the number of literal elements in an array. It functions against multi-dimensional arrays as well as one-dimensional arrays.

1-dimensional array example

`DIM(array_name)`

Multi-dimensional array examples

- `DIM(m_array)` returns the number of elements in the first dimension of the array

- `DIM5(m_array)` returns the number of elements in the 5th dimension of the array

- `DIM(m_array, 5)` returns the number of elements in the 5th dimension of the array
<hr>

Chapter 16 Processing Variables with Arrays

- Creating One-Dimensional Arrays (p495)
- Understanding SAS Arrays (p495)
- Defining an Array (p495)
- Use an ARRAY Statement
- Specifying the Dimension (p496)
- Compilation and Excecution (p501)
- Expanding your use of Arrays (p503)
- Arrays of Character Variables (p505)
- Assigning Initial Values to Arrays (p506)
- Creating Temporary Array Elements (p509)
- Defining a Multidimensional Array (p510)

<hr>
### Basic Syntax of the ARRAY Statement 
To use arrays in SAS code, first make sure that you understand the basic syntax of the SAS ARRAY statement. This section describes the ARRAY statement and provides a number of examples to illustrate its use. Subsequent sections progress to more complex statements and examples. 
In its simplest form, the ARRAY statement consists of the keyword ARRAY followed by the name of the array: 

<pre><code>
ARRAY array-name[ ]; 
</code></pre>

The array name is followed by either a pair of parentheses ( ), braces { }, or square brackets [ ]. This document uses square brackets [ ].  By specifying a constant value within the brackets, you can specify the number of variables or elements that are to be associated with the array. As shown in the following example, you can follow the brackets with a variable list that you want to associate with or assign to the name of the array: 
<pre><code>
array revenue[12] rev1-rev12; 
</code></pre>
In this statement, the array REVENUE has 12 variables (Rev1 – Rev12) associated with it. Frequently, such an array is referred to as having 12 elements.
<hr>

#### Creating Temporary Array Elements

<pre><code>
data finance.report(drop=i);
  set finance.qsales;
  array sales{4} sales1-sales4;
  
  end;
run;  
</code></pre>


#### Referenceing Elements of a Two Dimensional Array
*page 512*

<pre><code>
data finance.quarters;
   set finance.monthly;
   array m{4,3} month1-month12;
</code></pre>


*page 513*
<pre><code>
data finance.quarters(drop=i j );
  set finance.monthly;
  array m{4,3} month1-month12;
  array Qtr{4}
  do 1 = 1tp 4;
    qtr{i}=0;
       do j1 to 3;
          qtr{i}+m{i,j}
       end;
  end;
run;  
</code></pre>  
  
  

</code></pre>
