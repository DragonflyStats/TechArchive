SAS Base 18 Reading Free Format Data
=====================================
Chapter 18
### Sections
1. Free-Format Data
2. Using list Input
3. Reading Missing Values
4. Specifying the Length of Character Values
5. Modifying List Input
6. Creating Free-Format Data
7. Mixing Input Styles
8. Additional Features
<hr>

Limitations of List Input
#### Reading Missing Values
Reading Missing Values at the End of te REcord
Reading Missing Values at the Beginning or Middle of a record
Specifying the Length of Chacaracter Values

### The `LENGTH` Statement

Chapter 18 Reading Free Format Data
- Free-Format Data (p549)
- Using List Input (p549)
- Processing List Input (p550)
- Working with Delimiters (p551)
Most free-format data fields are clearly separated by blanks and are easy to imagine as variables and observations. But fields can be separated by other delimiters such as commas.
- Reading a Range of Variables (p553)
- 

<pre><code>
data survey.phone;
	infile survey;
	input IDnum $ Ques1-Ques5;
run;
proc print data=survey.phone;
	var ques1-ques3;
run;
</code></pre>
- Limitations of List Input (p554)
- Reading Missing Values (p554)
- Reading Missing Values at the end of a record (p554)
- Reading Missing Values at the beginning or middle of a record (p555)
<hr>

#### Reading Non Standard Values (Page 562)
#### Processing the DATA step (Page 563)

Specifying a delimiter



#### Using the DSD Option

#### Chapter Summary

- Free Format Data
- Using List Input
- Reading Missing Values
- Specifying the Length of Character Values
- Modifying List Input
- Creating Free Format Data
- Mixing Inpout Styles



