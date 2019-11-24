Lesson 2: AQL Basic Features
Lesson Objectives
This lesson introduces basic features - the
building blocks of an AQL extractor. After completing this lesson, you should be familiar
enough with the basic features to use them in creating views.
### AQL Approach
Creating AQL extractors is a multi-step, multi-layered process. You start by creating
fundamental components that are very specific in nature, using the basic features of the
language. These are along the lines of finding numeric strings in the data or locating all of the
companies’ division names in the document.
These basic features are then used for Candidate Generation. At this level in the process you
might be using multiple basic features in order to find occurrences of amounts such as "1.4
billion dollars." And then, using that data to find amounts that are associated with particular
divisions.
One of the things you might find when you are generating candidates is that you extract more
data than you require. The third step is to consolidate or filter the candidate results so that
you only extract the desired data.
### Extract Regular Expression
Here we have our first example of a basic feature view. The create view statement defines a
tuple with a single attribute, 'match.' The tuples are extracted with a regular expression that
matches any number - integer or decimal - in the document. Regexes are your bread-andbutter
pattern matching tool. They can be used to extract any text that conforms to the same
structure, e.g., a phone number, proper noun, or IP address. AQL defaults to using perl syntax
for defining regular expressions.
The regex is enclosed between forward slashes.
The "d+" matches one or more digits.
The next term in the parentheses matches a decimal point followed by another series of digits.
The question mark indicates that the parentheses contain an optional term.
#### Grouping Specification
You can specify groups in order to get specific parts of a regex match. Groups are enclosed by
parentheses, and read left-to-right, outer-to-inner. Group 0 is a special group that returns the
entire match. Here we have a regex that matches phone numbers.
As you can see, this first group of parentheses is group 1
Next would be group 2
And this entire term is group 3
Now that we're done with the outer parentheses we move inward.
This is group 4
This is group 5
And this is group 6
Here we see how groups are used in a 'create view' statement.
You extract your regex as before, and assign each group as an attribute in a tuple using the
'return' clause.
Regular Expression Helpers
The Eclipse Plug-in for BigInsights provides two tools that can help you create and test regular
expressions: The builder, and the generator. You can invoke these via the two icons below the
menu bar, or by right-clicking an existing regular expression and selecting from the context
menu.
### Regular Expression Generator
To use the regular expression generator, you either load some sample text from a file or type
it in yourself. Click the 'Generate regular expression button' and the system will attempt to
generate several regular expressions that are appropriate. There is a slider bar that allows you
to switch from various stages; from very specific expressions, to very general expressions. You
select the desired generated expression and it will be placed in the clipboard. From there you
can copy it into your script.
### Regular Expression Builder
The regular expression builder allows you code your own regular expression rule that matches
the sample text that you specify. You can create your rule by selecting various constructs or
simply typing them in if you are familiar with regexes. As you are building the rule, your
sample text is highlighted where the rule applies, giving you a visual indication as to the rule's
validity.
### Creating Dictionaries
Dictionaries are a list of words that can be used in pattern matching. They are created with the
'create dictionary statement. There are two main types of dictionaries: inline and external.
Inline is suitable when your dictionary has only a few values, such as a dictionary of numeric
scales. Here we see the syntax for creating an inline dictionary.
The language code is a string of comma separated two-letter codes such as 'EN' for English or
'ES' for Spanish for the languages on which to evaluate the dictionary. Note that the dictionary
will produce no results if an unrecognized language code is used. The default is English.
The optional 'case' parameter specifies what type of case folding the dictionary performs
when determining whether a given region of the document matches.
The choices are 'exact', 'insensitive', and 'folding'. 'folding' uses unicode case folding. The
default is 'insensitive'.

The optional 'lemma match' parameter specifies that the dictionary is matches against the
lemmatized form of tokens instead of their surface form. For example, the word 'better' has
'good' as its lemma. So if the dictionary contained 'good', occurrences of the word 'better'
would be considered as matches.
Creating a dictionary from an external file differs in that there are no inline entry values but a
'from file' clause instead.
The optional parameters are the same as with an inline dictionary.
External dictionary files are carriage-return delimited text files with one dictionary entry per
line. Lines with a '#' character at position 0 are treated as comments.

### Dictionary Extraction
Continuing with our theme of extracting company performance information from a quarterly
report, you probably want to know the revenue generated by each division. Pulling out
numbers, like '26.3', is going to be important, but you also need to know the numeric scale.
Using a dictionary that finds all occurrences of 'million', 'billion', or possible 'trillion' will
facilitate this endeavor. Our example here uses a single dictionary, but it is possible to create a
view extracting from multiple dictionaries. Also, it's worth noting that even if you only want to
extract a single word it is more efficient to put it in a dictionary with a single entry than to use
a regex.

### Dictionary Extraction with the Having Clause
The 'having' clause allows for a predicate to be applied to the extracted text. In this case, the
dictionary contains a list of IBM divisions or segments. One of those is the Software segment.
But there are other references to the term 'software' in a quarterly report document.
How can you differentiate between the two? The Software segment begins with a capital 'S'.
So applying a having clause that checks if the returned text value begins with a capital letter is
a start in elimination undesirable results. Note that this is a somewhat contrived example
because we could simply specify our dictionary to use exact case matching and get rid of the
'ignore case' flag.
The 'having' clause is valid for any extract statement and not just those involving dictionaries.

### External Dictionary
I mentioned earlier that external dictionaries are suitable when you have more than a few
entries. They are also a very useful way to maintain portability in your AQL modules.
Inline dictionaries are hard-coded into your module. But what if you are designing a dictionary
that will be used for a consistent purpose, but with different data? You need a way to
populate the dictionary at runtime.
Consider this: you write an extractor that uses a dictionary containing a business's division and
segment names. Your extractor will be used by multiple companies. Each company will have
variations in their divisions and segments. An easy solution is to reference an external
dictionary and have the company supply the entries.

### Part of Speech Extraction Statement
Another common scenario in text analytics is recognizing and extracting parts of speech.
E.g., all nouns or verbs. You could conceivably write a dictionary containing the required
entries, but that could be a daunting task. Fortunately, the part of speech extract statement
does the work for you. Here we see the format for a part of speech extraction.
The part of speech specification is a list of tags that represent the desired parts of speech.
The tags are from the Penn Treebank Project, a popular linguistic annotation database.
For a list of tags, refer to the BigInsights Information Center.
In this example, a view is created containing every English- language noun and proper noun
found in the document, using the Penn Treebank tags "NN" for noun and "NNP for proper
noun.
### Splits
Another AQL object is the split, which is used to break up a span into several smaller spans.
A span is simply a string of text along with the positions in the document of its starting and
ending characters.
Split takes two columns as input: the target column, containing the spans to be broken up,
and the split point column, containing the values around which to perform the split.
The 'retain' argument specifies how to treat the endpoints of the split.
Let's look at an example.
Your target span is the string "fish are swimming in the fish pond." Your split point is the word
"fish."
With the retain clause omitted, you wind up with "are swimming in the", and "pond"
With retain right split point, you get "are swimming in the fish", and "pond"
With retain left split point, you get "fish are swimming in the", and "fish pond"
With retain both split points, you get "fish are swimming in the fish", and "fish pond"
### Detag
The detag statement strips HTML and XML tags from a document and creates a new detagged
text document which can then be used for AQL queries. In addition to stripping out the tags,
the statement can also remember the original locations of the tags and their values.
The format of the detag statement is as follows:
The main clause provides the name of the input view containing the text and the tags. It also
provides the name of a new output view where the detagged text goes.
This output view contains a single column, called 'text'.
Running non-HTML or non-XML text through a detagger can cause problems if the text
contains XML special characters like pointed brackets or ampersand. The optional 'detect
content type' clause specifies whether to verify that the target document text contains XML or
HTML content before attempting to detag it. 'always' will skip detagging if the document does
not appear to be XML or HTML. 'never' will detag no matter what.
The optional 'annotate' clause directs the system to remember information about the tags it
removes, creating one or more views to hold the locations of the original tags.
#### Detag Example
Here we have a simple detag statement and HTML document.The statement reads the
document and creates two extractions:

The first of which is DetaggedDoc, which contains the non-html text.
There is also an 'annotate' clause which creates a view called Title consisting of tuples of a
single attribute called 'match' which hold the text of the HTML elements.
### More Complex Detag Example
Here is a more complex multi-step example.
Once again, the detag statement strips our document and remembers all the title tags.
In addition to that, a view called Anchor gets created, which remembers all the hyperlinks in
the document. There are two attributes in the anchor view: 'match' and 'href'.
The match attribute contains the anchor element values (the hyperlink text)
And 'href' contains the hyperlink URL.
Next we create a simple dictionary of some websites, and finally we create a view that gathers
all of the hyperlinks that point to one of the sites we are interested in.
<hr>
### Lesson Summary
This concludes lesson 2. You should now be able to create views with the basic features we
discussed including regular expressions, dictionaries, parts of speech, splits, and detag.
Proceed to exercise 2 and the next lesson.
