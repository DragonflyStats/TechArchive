Lesson Four: Filtering and Consolidation
==================================================
### Filtering and Consolidation
The last step in creating your application is the filtering and consolidation phase, where you
refine you results. 

Consolidation allows you to specify how you want to handle spans that
overlap. You have already seen the use of the 'where' clause and predicate-based filtering.
This lesson introduces set-based filtering, which uses the minus clause - essentially the
opposite of 'union all.'
### Lesson Objectives
After completing this lesson, you should be able to use the filtering and consolidation
features: Where, Consolidate On, and Minus. We will also cover user defined functions.
###The 'Consolidate' Clause
The ‘consolidate on’ clause specifies what the system is to do if overlapping spans are
returned. The format of the clause is "consolidate on <target> using '<policy>'."
Note that the policy is enclosed in single quotes. The target is either a column or an expression
composed of scalar function calls.

There are five consolidation policies.
- ***ContainedWithin***: If spans A and B overlap, and A completely contains B, then remove the
tuple containing span B from the output. If A and B are exactly the same, then remove
one of them. The choice of which tuple to remove is arbitrary. This is the default policy.
- ***NotContainedWithin***: If spans A and B overlap, and A completely contains B, then remove span
A from the output. If A and B are exactly the same, then remove one of them.
- ***ContainsButNotEqual***: Same as ContainedWithin, except that spans that are exactly equal are
retained.
- ***ExactMatch***: If a set of spans cover exactly the same region of text, return exactly one of them.
All other spans are left untouched.
- ***LeftToRight***: Process the spans in order from left to right; when overlap occurs, retain the
leftmost longest non-overlapping span.
### Minus
Since you're working with unstructured text, you can only make assumptions as to how the
data is going to appear. If you create a view using the block feature, then you have dictated
how many characters or tokens there can be between the two spans. Your spacing is going to
be somewhat arbitrary. If you make the block size too small you can miss data. If you make it
too large, then you might wind up getting blocks within blocks. If it's the latter, you will want
to remove the duplicated tuples.

Or you might have created a view that returns the names of all of the organizations in a
document based upon some generic criteria. However, for your particular analysis, you might
want to eliminate a subset of the organizations.

In both cases, you have one view that returns more tuples than you want. If you have a second
view that returns tuples that you would like to discard, then you can get your desired results 
by subtracting the tuples in the second view from the superset of tuples that are in the first
view.

As with union all, the schemas have to be the same. However, recall that a span is not only a
character string, but also the location of that string within the document. With the minus
clause, spans are only considered identical if their text AND position are the same. So if, for
example, total revenue is mentioned multiple times in the document, the minus clause will
NOT remove any of them – this is what the consolidate clause is for.

###User-defined Functions
AQL allows users to define their own functions. Only scalar functions are supported; that is,
functions that return a Boolean, Integer, String, Text, Span, or List. These functions can be
used in both 'select' and 'where' clauses, just like built-in functions.
###UDFs Continued
All AQL user-defined functions must be written in Java. They are implemented as a public
method in a Java class. The function requires the systemT.jar file, which must be added to the
project build path. Once the UDF has been implemented, it should be packaged as a *.jar file
and placed in the search path. This search path is the same search path used for dictionaries.
You can find a detailed explanation of UDFs at the BigInsights Information Center.
Here is a simple UDF that returns the sum of two integers. Note how it is defined within a
public class.
### Lesson Summary
This concludes our final lesson. Congratulations on completing the text analytics essentials
course. You should now be able to use the AQL filtering and consolidation objects, including
where, consolidate on, and minus, as well as user defined functions.
Make sure to do the last exercise and complete the course quiz. Thank you.
