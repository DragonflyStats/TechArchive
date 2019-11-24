TAE 1 : Intro
### Welcome to Text Analytics Essentials.
This course will take you through the process of extracting useful information from text
documents using IBM's Annotation Query Language (AQL).
We will begin with an introduction to unstructured data and text analytics.

### What is Unstructured Data?
If you’ve worked with databases before then you’re familiar with structured data. Computers
have been working with these systems for close to 60 years. However, the amount of stored
structured data is minute when compared to unstructured data. Consider the number of blog
posts, tweets, documents created, and emails sent on a daily basis. All of that data is
unstructured or semi-structured.

### So what can all this data do for us?
For one, documents often contain facts. For example, from a quarterly report you might
extract revenue statistics or the names of company executives. Another reason is that much of
it is a form of communication. People's behaviors and opinions are expressed when they
communicate. This information is a powerful marketing tool. You can gain feedback on your
products, how they are viewed in comparison to your competitors, and identify trends among
demographics.
### Problem with Unstructured Data
The problem with unstructured data is that it was designed for human consumption.
With structured data you know its attribute type, which might be an integer, character,
decimal, etc.

And you know its usage - whether it represents a salary, name, or zipcode.
With this information your computer can process the data in a meaningful way.
But unstructured data, by its very nature, does not have known attribute types or data usage.
The only way to discern that information is based on context. This is natural for human beings,
but extremely difficult for a computer program.
Consider the phrase "Tom Brown has brown eyes."
We can easily distinguish between Brown as a proper noun, and brown as an adjective.
But to a program, the two words are essentially identical strings of characters.
### Available Technologies
Text analytics is a broad and rapidly expanding field. There are many tools available.
The ideal solution depends on the type of data, the information you want to extract, and your
technology environment.

A common use case is performing data mining and text analytics on large datasets that are
stored in a distributed file system, such as the open-source Apache Hadoop. Hadoop comes
with Pig, which is itself based on a high-level language called Pig Latin. Pig is highly extensible
and easy to use. It is automatically optimized for a series of MapReduce jobs, the core Hadoop
technology which allows for massive parallelization.

Another option is JAQL, available open-source, but also maintained in BigInsights, IBM’s “big
data” solution built upon Hadoop.
JAQL is very powerful for processing data stored in JSON (JavaScript Object Notation).
Like Pig, your code is automatically optimized for parallel computing.

### AQL (Annotation Query Language).
AQL is a part of BigInsights, designed specifically for natural language processing and text
analytics. Its syntax will be immediately familiar to anyone who has worked with SQL. You can
easily extract complex patterns from simpler building blocks, such as words or regular
expressions. AQL comes with prebuilt extractors for many common use cases, as well as
extensive language support.

There are open-source alternatives outside of Hadoop as well. If you use python you might
consider the Natural Language Toolkit. There’s also the General Architecture for Text
Engineering, a pure Java solution.
### Lesson Objectives
Let's begin with the first lesson.
After this, you should be familiar with the general multi-step approach to text analytics, as
well as understand the first step in the process, which is called labeling.
You should also have a general idea of the AQL data model and components, but we are going
to go into these in further detail later on.
Approach for Text Analytics
Text analytics can be broken down into stages where you progressively refine your data until
you are left with something that can be used by your application.
During the analysis stage, you identify the type of information you are interested in. This is
accomplished by labeling specific words and phrases in your sample documents.
Next, you create rules that extract the data and verify that they work as intended. This stage
can actually be further broken down. You start by extracting basic elements. You might create
a regular expression to extract phone numbers. And then you extract the context for that
basic block by combining them with the clues you identified in the analysis stage.
Finally, you move onto performance tuning, production, and all that fun stuff. We won't go
into too much detail here; just enough to get you writing your own AQL modules.
### Task Analysis
We know that unstructured data requires context. This is the goal of the analysis stage:
To find and label words that indicate relevant information. We call these words 'clues'.
The ideal source of these clues is documents of the same type as the one you are extracting
from.
Consider that you want to find information about IBM's quarterly revenue. We will use this
scenario later on. Naturally, the best source of sample data is existing financial quarterly
reports. Inside the reports you might encounter the phrase "revenue for the quarter was $23
billion". $23 billion is clearly an amount - a value we would put in a database. "Revenue for the
quarter" is a clue that tells us what that value actually means. Here is a table showing that
data might ultimately end up in a database.
### The Eclipse IDE for Text Analytics
Here we show the Eclipse plug-in that is shipped with BigInsights being used for the labelling
process.
$5.6 billion is currently being labelled as an amount.
If you look to the top right of the screen, the phrase "Revenues for the Software segment" is
already labeled as an indicator.
You'll become familiar with the Eclipse plugin during the next lab exercise.

### AQL
The data model for AQL is similar to that of an SQL database. To extract data, you create
views. These are very similar to tables in a relational system. All data in AQL is stored in tuples,
which you might think of as rows. Each tuple is made up of attributes, which are like columns.
All tuples in a view must have the same schema, meaning the name and type of each attribute
must be the same for all tuples in the view. Scalar types supported by AQL are as follows:
Integer: a 32-bit signed integer
Float: a single precision floating-point number
Text: a unicode string that has additional metadata to indicate to which tuple the string
belongs
Span: a contiguous region of characters in a text object
And list, which represents a group of one of the above mentioned types.
AQL Continued
An AQL extractor consists of a collection of views, each of which defines a relation.
There is one special view called Document. This view represents the document that is
currently being annotated. Document is a reserved word and you cannot create another view
with that name. You will see how this special view is used in the next lesson. The file name for
your extractor must have .aql as a suffix. All AQL statements are case-sensitive and terminated
with a semi-colon. Line comments are preceded by two dashes (--) and blocks of comments
are encapsulated as in Java and C++. Spaces and blank lines are ignored.

In order to make use of any views that you have previously defined, they must be exported.
Your AQL file can contain the 'module' statement. This causes a text analytics module to be
created that has self-contained required resources. Those resources can then be exported as
AQL objects, and other modules are then able to import them. Objects might be views,
dictionaries, tables, or functions, which we will discuss throughout the course.
#### AQL Components Overview
Let's briefly go over the different AQL components.
The create view statement defines a view and its tuples.
The extract statement provides functionality for extracting basic features from the text.
It makes use of regular expressions, dictionaries, splits, blocks, parts of speech, and sequence
patterns.
The select statement allows you to use those building blocks to create complex patterns.
The detag statement removes HTML and XML tags from said document types.
The create dictionary statement allows you to define a dictionary of words and phrases that
can then be used in an extract statement.
There are a number of built-in functions provided in AQL, including predicate functions, scalar
functions, and aggregate functions. You can also code your own functions to be used in
extraction rules.
### Create View
Views are the top level components in AQL, akin to tables in SQL. There are several ways to
create a view using the 'create view' statement. One way is to specify select or extract
statements to populate the view. Using a 'select' statement, you can create a view by selecting
attributes from a tuple defined in another view. Or, with an 'extract' statement, you can
extract directly from the text. You can also create a view by unioning together several
previously defined views. Or you can get the set difference between two views with the
'minus' clause.
### Output View
Views in AQL can either be an output view or non-output view. When an AQL extractor
executes it computes the result tuples for all output views. The extractor only evaluates nonoutput
views if their outputs are needed to compute and output view. By default, views
created with the 'create view' statement are non-output. You must use the 'output view'
statement if you want to use your view elsewhere. When you create a view during
development, you may want to define it as an output view to test your work. As an output
view, the extracted spans will be displayed, so you can verify that the proper tuples are being
returned. Then you can remove or comment out the output statement if the results aren't
needed externally.
### Lesson Summary
By now you should have a good understanding of the why and what of text analytics, as well
as how AQL fits into the picture. We went over the process of labeling your sample documents
to help with creating extractors. In the next lesson, we will see concrete example of extracting
basic features, the building blocks of our AQL views.
