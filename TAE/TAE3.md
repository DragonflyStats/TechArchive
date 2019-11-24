Lesson 3: Candidate Generation
===================================
### AQL Approach - Step 2
We are now ready to begin the second stage of extractor development. This involves
combining basic features to create more sophisticated views. In the previous stage, we saw an
extractor that found every occurrence of a number, and another that found numeric scales
such as million or billion. We can combine these to get a dollar amount. Of course, an amount
by itself still lacks context. Throughout this lesson we will see tools that can identify what an
amount represents.
### Lesson Objectives
After completing this lesson, you should be able to list the AQL candidate generation
components
and use them to create views.
### Import and Export Statements
At this point, depending on the complexity of the project, you may find yourself with multiple
modules. To use an object, like a view, dictionary, table, or function, you must include an
export statement
in its home module. Then, you import that object
via the import statement.
### Blocks Specification
You can use blocks extraction to identify blocks of contiguous spans across input text. A span
is just a section of text specified by the position of its start and end characters.
The 'with count' clause specifies the number of spans that make up the block. This can be an
absolute number or a range.
You also specify the acceptable distance between spans for those spans to be considered as
contiguous. This can be some number of tokens or characters.
### Blocks Example
Let's look at an example of a blocks extractor. Assume you have already created a view that
returns all the capitalized words in a document. You would like to find blocks where there are
two or three capitalized words within 100 characters
of each other. You create your view, called BlockCapitalWords. The extract blocks statement
specifies a block size of 2 or 3 words, with a separation of 0 to 100 characters. The extraction
is performed on the existing view, CapitalizedWords. The resulting view will have
one attribute called capswords containing your blocks.
### Sequence Patterns
Sequence patterns can be used to perform regular expression matching over the document
text itself, along with annotations extracted from the document. This allows you to write
complex extraction patterns involving alternation, sequences, and repetitions in a compact
fashion.
The pattern specification is defined according to a context-free grammar. The rules of the
grammar are necessarily quite complex; if you would like to learn about it you can view the
article on Sequence Patterns in the BigInsights Information Center.
Here is the basic format of a pattern extractor.
The return clause functions the same as it does in an extract regex statement. You specify
which groups to return and what to call them.
### Patterns Example
At the beginning of this lesson, we saw that during this stage you might want to combine a
number
and a numeric scale to create a dollar amount. We can now accomplish this by using
sequence patterns. You have already seen a view that extracts numbers, as well as a view that
extracts a scale value. The numbers representing amounts will all be preceded by a $ (dollar
sign). Thus our view will look for the pattern of a dollar sign, followed by a number, followed
by a numeric scale. Since the extraction returns only one group (remember that group 0
represents the entire match) the output view will have only one attribute in its tuples.
Another Patterns Example
Here is another example. Assume that you have a document that contains factual information
about countries. It might be the country name, the longitude and latitude, the government
type, population, its area, climate, etc. You would like to extract the country name and the
corresponding longitude and latitude.
The first step would be create a view called Countries that returns the extracted country
names and a second view called Locations that returns all of the longitudinal and latitudinal
values. Next, you create a sequence pattern that looks for a country name and a
latitude/longitude pair in close proximity. Here is what it might look like.
We assume the Countries and Locations views have already been created. It looks for a
Country name, followed by a latitude longitude pair that is at least five tokens away but not
more than 35 tokens away.

### `Union All`
The union all operator allows you to combine the tuples from two views as long as the views
have the same schema. To continue our example of extracting financial information from
quarterly reports, dollar amounts by themselves are not the only financial indicators of
interest. Knowing percentage increases or decreases can be useful as well.
This example assumes that you created a view that returns dollar amounts, like the one from
our sequence pattern example, and another view that returns percentages. Now, you would
like a view that returns both. Notice that the same attribute name is used for both views. This
is what we mean by having the same schemas. Each tuple must have the same number
of attributes, with the same attribute names.
### The Select Statement
We have one more statement to cover in this lesson: the select statement. The statement is
almost the same here as its SQL counterpart. You select a list of columns or attributes from a
list of views. Optionally you can include a predicate by specifying a where clause. You may also
group and sort the results by specifying a group by clause and an order by clause. The limit
clause may be used to specify the maximum number of tuples returned for each document.
Each of these clauses functions as you would expect based upon their roles in an SQL select
statement.
One difference is that AQL has a "consolidate on" clause. This directs the system on how to
handle spans that overlap. We will review this in the next lesson.
The Select List
The select list consists of a comma-delimited list of output expressions. If columns are listed,
they must be qualified with a view name. They can be assigned a local name or alias; for
example, viewname.colname as localname.
The select list may include expressions as well. Expressions can be scalar function calls or
aggregate function calls. It is also possible to specify a case statement as an expression.
### Selecting from a View
The select statement allows you to create a view, based on a second view, and apply some
filter criteria in the form of the 'where' statement. Suppose you have a dictionary,
FalsePositivesDict, which contains values like 'increased, decreased, up, down.' In the
quarterly report there are these two statements:
Services signings of $17.8 billion, up 55 percent.
Total gross profit margin was 44.6 percent.
The dollar amount and the percentages are returned in the AmountPossibilitesView; however,
‘up 55 percent’ just describes the services signings. It is not a value we want returned.
We create a new view. The 'where' clause in the select statement says that we only want
values where the token to the left of the span is not in the False Positives Dictionary. This
eliminates our first candidate.
### AQL Built-in Functions
AQL has a collection of built-in functions
which fall into one of three categories.
Let's go through a few functions from each category. To get a complete list of built-in
functions, you should refer to the BigInsights Information Center.
Predicate functions are used as the building blocks for the where clause.
Contains: Takes two spans as arguments and returns TRUE if the first span is completely
contained in the second span.
Equals: Takes two arguments of arbitrary type and returns TRUE if both arguments are equal.
Follows: Takes four arguments. The first two are spans and the second two are integer values
(min and max). The function returns TRUE if the distance in tokens from the end of the first
span to the beginning of the second span is more than the min value and less than the max
value, inclusive.
Scalar functions return integers, strings, or new spans.
CombineSpans: Takes two spans as arguments and returns the shortest span that completely
covers both
input spans.
GetBegin: Takes a single span as its argument and returns the beginning offset of the input
span.
GetEnd: Takes a single span as its argument and returns the ending offset of the input span.
GetText: Takes a single span as its argument and returns the actual text string that the span
marks.
Aggregate functions create a single value
from a list of input values.
Avg: Returns the average of all input values; returns null of no rows are selected.
Count: Returns the number of all input rows.
Max: Returns the maximum element across all input values or returns null if no rows are
selected.
<hr>
### #Lesson Summary
This concludes the lesson on candidate generation.
To recap, you should be familiar with components
used in candidate generation:
Blocks, Sequence Patterns, Union, and Select, plus the built-in functions.
Check your knowledge with the lesson quiz, then proceed to exercise 3 and the next lesson.
