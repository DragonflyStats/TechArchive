Chapter 15 Generating DATA with Do Loops
=======================================
- Constructing DO loops (p474)
- DO Loop Execution (p476)
- Counting Iterations of DO loops (p477)
- Explicit OUTPUT Statements (p478)
- Decrementing DO Loops (p478)
- Specifying a series of Items (p478)
- Nesting DO Loop (p479)
- Iteratively processing data that is read from a data set (p481)
- Conditionally Executing DO Loops (p482)

<hr>
### Constructing Do Loops

In this section, we'll explore the use of iterative DO loops, in which you tell SAS to execute a statement or a group of statements a certain number of times. Let's take a look at some examples!

The following program uses a DO loop to tell SAS to determine what four times three (4 × 3) equals:

<pre><code>
DATA multiply; 
	answer=0
 	do i = 1 to 4;
		answer +3;
	end;
RUN;
PROC PRINT NOOBS;
	title `Four Times Three Equals....';
RUN;
</code></pre>
The key to understanding the DATA step here is to recall that multiplication is just repeated addition. That is, four times three (4 × 3) is the same as adding three together four times, that is, 3 + 3 + 3 + 3. That's all that the iterative DO loop in the DATA step is telling SAS to do. After having initialized answer to 0, add 3 to answer, then add 3 to answer again, and add 3 to answer again, and add 3 to answer again. After SAS has added 3 to the answer variable four times, SAS exits the DO loop, and since that's the end of the DATA step, SAS moves onto the next procedure and prints the result.
<hr>
#### The DO UNTIL Loop

When you use a DO UNTIL loop, SAS executes the DO loop until the expression you've specified is true. Here's the general form of a DO UNTIL loop:
   <pre><code>
   DO UNTIL (expression);
      action statements;
   END;
   </code></pre>
where expression is any valid SAS expression enclosed in parentheses. The key thing to remember is that the expression is not evaluated until the bottom of the loop. Therefore, a `DO UNTIL` loop always executes at least once. As soon as the expression is determined to be true, the DO loop does not execute again.
<hr>
<pre><code>
data work.invest;
	do year = 1 to ?;
   	capital+2000;
   	capital+capital*.10;
	end;  
run;
</code></pre>

Using the DO WHILE statement (p483)
<pre><code>
data work.invest;
	do while (Capital >=50000);
   	capital+2000;
   	capital+capital*.10;
   	Year+1;
    end;
run;
</code></pre> 
 
 
 
 
 
 
Creating Samples (p485)
<pre><code> 
data work.subset;
	do sample=10 to 5000 by 10;
   	set factory.widgets point=sample
	end;
run;
</code></pre> 
You need to add a “stop” statement when using “point=”
<pre><code>
data work.subset;
	do sample=10 to 5000 by 10;
   	set factory.widgets point=sample
   	output;
	end;
	stop;
run;
</code></pre> 
DO loop execution (p486)
Chapter Summary
·         Purpose of DO Loops
·         Syntax of iterative DO loops
·         DO Loop Execution
·         Counting iteratiosn of DO loops
·          
·          
·         Decrementing Do Loops
·         Specifying a Series of Items
·         Nesting Do Loops
·         Iteratively Processing Data that is read from a data set
·         Conditionally executing DO loops
·         Creating Samples

<hr>


#### Constructing DO Loops
(page 475)
<pre><code>
data finance.earnings
  set finance.master; 
  Earned=0;
  do count = 1 to 21;
     earned+(amount+earned)*(rate/12);
  end;
run;
</code></pre>

#### DO Loop Execution


<pre><code>
data finance.earnings
  amount=1000;
  rate=0.075/12
  do month = 1 to 12;
    Earned + (amount/earned)*(rate);		
  end;
run;
</code></pre>

<hr>
- SAS Base 15 Purpose of DO Loops
- Syntax of Iterative DO Loops
- DO Loop Execution
- Counting Iterations of DO Loops
- Decrementing DO Loops
- Specifying a Series of Items
- Nesting DO Loops
- Iteratively Processing DATA that is read from a a data set
- Conditionally Executing DO Loops
- Using Conditional Clauses with the Iterative DO Statement
- Creating Samples

<p>(p482)</p>

<pre><code>
data work.invest;
   do year=1 to 20;
      Capital + 2000;
      capital + capital*0.10;
   end;
run;
</code></pre>

<hr>



<p>Simple DO Loop</p>

<pre><code>data=work.earn;
   value=2000;
   do years=1 to 20;
     Interest=values*0.75;
     value+interest;
   end;
run;

</code></pre>

<hr>
#### Nesting DO loops
*Page 479*

Iterative DO statemens can be executed within a DO loop. Putting a DO loop inside a DO loop is called nesting.

<hr>
#### Iteratively Processing Data That is read from a data set 
*Page 481*

<pre><code>
data work.compare(drop=i);
  set finances.cdrates;
  Investment=5000;
  do i = 1 to years;
     investment+rate*investment;
  end;
run;  
</code></pre>



<hr>

#### Quiz Questions
<p>Chapter Quiz Question 6:</p>

<pre><code>data = work.earn;
    Value=2000;
    do year =1 to 20;
         Interest=value*0.75;
         value+interest;
         output;
    end;
run;

</code></pre>
