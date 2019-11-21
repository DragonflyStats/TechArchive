SAS Base 14 Use of SAS Functions
===================================
- create sample statistics
- create SAS data values
- convert U.S. ZIP codes to state postal codes
- round values
- generate random numbers
- extract a portion of the character value
- covert data from one type to another
- General Forms of SAS Functions
- Arguments Variables List s and Arrays
- Coverting Data with Functions
 

<hr>

### Introduction

Potential Problems
Automatic Character to Numeric Conversion
When Automatic Conversion Occurs
Restriction of WHERE Expressions
Explicit Character-to-Numeric Comvervsion
Automatic Numeric-to-Character Conversion
Explicit Numeric-to-Character Conversion
Matching the Data Type

- WEEKDAY Function
- MDY Function
- DATA and TODAY Function
- INTCK Function
- INTNX Function
- DATDIF and YRDIF Function

(p460)
<pre><code>
data work.after;
 set work.before;
 Examples = int(examples);
run;
</code></pre>
(p461)
<pre><code>
data work.after;
 set work.before;
 Examples = int(examples,.2);
run;
</code></pre>
<hr>
#### Chapter 14 Transforming Data with SAS Functions

Understanding SAS Functions (p415)
Uses of SAS Functions (p416)
General form of SAS Functions (p417)
Target Variable (p418)
Converting Data with Functions (p418)
Introduction to Converting Data (p418)

<pre><code> 
data hrd.newtemp;
    	set hrd.temp;
    	Salary=payrate*hours;
run;
</code></pre> 
 
Potential Problems of Omitting INPUT or PUT (p419)
Automatic Character-to-Numeric Conversion (p419)
When Automatic Conversion Occurs (p420)
Restriction for WHERE conversion (p421)
Explicit Character-to Numeric Conversion (p421)
Automatic Number to character conversion (p423)
Matching the Data Type (p426)
Manipulating SAS Date Values with Functions (p427)
SAS Date Functions (p428)
SAS stores dates, times and date times as numeric values.

Function  |  Typical Use

MDY | date=mdy(mon,day,yr);
TODAY | now=today();
DATE |  now=date();
TIME | curtime=time()


<hr>

YEAR,QTR,MONTH and DAY Function (p429)
Weekday Function (p432)
MDY Function (p433)
SAS’s Month, Day and Year functions
DATE and TODAY Functions (p436)
INTCK Function (p437)
INTNX Function (p438)

- DAY
- WEEKDAY
- WEEK
- TENDAY
- SEMIMONTH
- MONTH
- QTR
- SEMIYEAR
- YEAR

DATDIF and YRDIF Functions (p440)
Introduction to Modifying Character values (p441)
<hr>
### Character Functions (p442)

- SCAN
- SUBSTR
- TRIN
- CATX
- INDEX
- FIND
- UPCASE
- LOWCASE
- PROPCASE
- TRANWRD
<hr>
 
Scan Function (p442)
Specifying Delimiters (p443)
Specifying Multiple Delimiters (p443)
Default Delimiters (p443)
SCAN Function Syntax (p444)
<pre><code>
data hrd.newtemp(drop=name);
   set hrd.temp;
   LastName = scan(name,1);
   FirstName=scan(name,2);
   MiddleName=scan(name,3);
run;
</code></pre>

Specifying the Variable Length (p445)
- SCAN vs SUBSTR (p445)
- SUBSTR (p445)
- Replacing text using SUBSTR (p447)
- Positioning the SUBSTR Function (p447)
- The TRIM function (p449)
- The CATX Function (p451)
- This function allows you to concatenate character strings.
- INDEX Function (p452)
- Finding a string regardless of case (p454)
- FIND function (p454)
- LOWCASE Function (p456)
- PROPCASE Function (p457)
- TRANWRD Function (p458)
- This function replaces or removes all occurrences of a pattern of characters within a character string.The translated characters can be located anywhere in the string.
- ROUND Function (p460)
This function rounds values to the nearest specified unit.
Nesting SAS functions (p461)
Chapter Summary (p462)

<hr>
The `DATESTYLE=`` system option tells SAS your intended sequence of month (M), day (D), and year (Y) when dates are ambiguous. Possible settings include MDY, MYD, YMD, YDM, DMY, DYM, and LOCALE. By default, the DATESTYLE system option is set to LOCALE, which tells SAS to use the form of dates that reflect the language and local conventions of the geographical region specified by the LOCALE system option. Yikes, this is sounding circular! Because LOCALE is by default set to ENGLISH for users in the United States, MDY is our default DATESTYLE option. 

We won't spend any more time on the DATESTYLE system option, but it is something you'll definitely want to know about if you ever get tempted to use the anydtdte. informats to read in dates. (Even though the anydtdte. informats are tempting to use as they allow you to read in different forms of the same date into one date variable, I chose not to present the informat, because I don't like the way it makes SAS have to make decisions about my data!)

#### `YEARCUTOFF`
SAS developed the `YEARCUTOFF=` system option to provide users with a way to handle two digit years. If we specify the date constant '13apr08'd, we could mean 2008, 1908, or even 1808. The `YEARCUTOFF =` system option eliminates this ambiguity by telling SAS the first year of a 100-year span to be used by date informats and functions when SAS encounters a two-digit year. The default value of `YEARCUTOFF` is 1920. In the default case, if SAS encounters a two-digit year in your program between 20 and 99, SAS assumes the date has a prefix of 19. And, if SAS encounters a two-digit year in your program between 00 and 19, SAS assumes the date has a prefix of 20. There are two things you can do if you don't like the way SAS is handling your two-digit dates — either use four-digit dates or use the OPTIONS statement to change the default YEARCUTOFF= option. We'll take a look at two examples now just to make sure we understand how SAS handles two-digit years.
