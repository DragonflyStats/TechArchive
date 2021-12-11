
Relational Model Concepts.
===========================================
The model was first proposed by
Dr. E.F. Codd of IBM in 1970 his paper was titled “A Relational Model  for Large Shared Data Banks“.
The building blocks of Relational model are Relation and Sets.
Relational Model of data is based on the concept of Relation and A relation is a Mathematical concept
based on idea of sets.

### Sets
* A set is an unordered collection of distinct elements. It is a collection of items of same type. It would have no order and no duplicates.
* A relational database is a set of relations.
* A relation is the mathematical term for a table.
* A table in turn is a combination of rows and columns.
* A relation is made up of 2 parts – namely Relation Schema and Relation Instance.
* A Relation schema specifies the name of a relation, name and type of each of the columns with its attributes.

--------------------------------------------------------------------
We shall refer to the entity Author we
have seen in our previous lessons.
AUTHOR is the name of the relation.
Author_ID is an attribute
which can hold data of type char.
Likewise lastname, firstname, email
 and city have type of varchar.
If you are wonder what these are, they are data types.
The last attribute Country is of char data type.
This constitutes the relation schema.

A Relation instance on the other hand, is a table made up of rows and columns.
The columns are termed as attributes or fields in a relation and the rows, tuples.
Degree is a term referred to the number of columns in a relation relation and Cardinality is the number of tuples.
The chart shows the degree as 6 since we have 6 columns and cardinality of 5 as we have 5 data rows.

----------------------------------------------------------------------------------------

In this video, we provide you an overview of
 Relational Model Constraints.
Within any business, data must often
adhere to certain restrictions or rules.
Let us take our Book and Author example.
Unless a book is written by an author,
the book virtually does not exist.
At least a one-to-one relationship is a must.
As you can see in the example,
either entity book refers to Author entity
to look up the author information or visa versa.

This in relational data model is termed as referencing. This is very crucial for establishing data integrity between
integrity between two relations in relational databases. We can have multiple referencing We can have multiple referencing and not necessarily be limited to just one-to-one relationship.

Take a look at the Relational model representation in ERD form.
We have several entities like Author, Book, and Borrower etc.
Also note Author_ID, BOOK_ID and
BORROWER_ID carry a special icon that features a key.
Such attributes are termed as Primary Keys.
Observe the entities at the lower portion of this ERD.
Some attributes have FK mentioned next to them in brackets. These are termed as Foreign Keys.
Notice these entities are part of the relationship set
between the entities that are above them.
All of them have a one to many relationship established between them.
All of them have a one to many relationship established between them.
identifies each record in the table. Foreign key is a set of columns
referring to a primary key of another table.
Before moving on to the relational model constraints,
let us learn two more terminologies that are often used in a relational model.
A table containing a primary key that is related to at
least one foreign key is known as a Parent table.
In our example, Author entity is the parent table.
Book is also a parent table.
A table containing one or more foreign keys is known as
dependent table. In this diagram, author_list has
foreign keys that refer two different parent tables.
Back to constraints that help implement the business rules,
we have the following constraints defined in a relational database model.

--------------------------------------------------------------------------------------------

Entity integrity constraint,
referential integrity constraint,
semantic integrity constraint, domain constraint,
null constraint, and check constraint.
Let us learn these in detail in the following slides.


# Exported by Aegisub 2.1.8 (built from SVN revision 4064)
To identify each tuple in a relation,
the relation must have a primary key.
The primary key is a unique value that identifies each row.
This is the entity integrity constraint.
Generally the terms primary key constraint and unique constraints are used.
To implement these constraints, indexes are used
which will be covered in detail in later presentations.
Entity integrity constraint says that
no attribute participating in the primary key
of a relation is allowed to accept null values.
For explanation purpose, I shall take the example of the relation
Author we have already seen in our previous presentations.
As you know, Author_ID is the
primary key for this relation Author.
Now this key identifies each tuple in the relation.
 Suppose I say Author_ID A1,
it points to the author Raul Chong from Toronto.
 What if I replace the value A1 with NULL?
We can still identify the author Raul Chong.
What if I replace A4 also with NULL?
Now, which NULL would identify which row? Isn’t that difficult?
Hence, this constraint, Entity integrity constraints
emphasizes on having no null values for the
attributes playing the primary key role.
Referential integrity constraint
defines relationships between tables
 and ensures that these relationships remain valid.
As mentioned in the very beginning of this presentation,
for a book to exist, it has to be written by an author.
Else, there is no meaning for just a book to exist all by itself.
Triggers in relational databases help
implement this referential integrity constraint.
Semantic integrity constraint
For this, let us see another example in the author relation.
If the column city contains some junk value like
this instead of Toronto,
does it give any meaning to the column name city?
A semantic integrity constraint refers to the
correctness of the meaning of the data.
file:///D|/00_Raul_D/00_Work/_db2university.com/_FINAL%...I/Transcripts/07_Relational%20Model%20Constraints_2.txt (1 of 2)1/9/2011 9:57:50 PM
file:///D|/00_Raul_D/00_Work/_db2university.com/_FINAL%20VIDEOS%20...amentals%20I/Transcripts/07_Relational%20Model%20Constraints_2.txt
A domain constraint specifies the
permissible values for a given attribute.
us take the example of country attribute
in our relation author.
We know that this particular attribute must contain
wo lettered country code such as CA for Canada,
IN for India etc.
Supposing a value of 34 is entered
for the country, does it make any sense? No right?
Of course unless there is another table which maps
Country codes in letters to that of numbers.
But we do not want to induce redundancy right?
NULL constraints specify that attribute values cannot be null.
Let us see what happens if in the author relation
relation a null value for either lastname
or firstname attributes is entered.
It poses difficulty in identifying the right author just in case,
either the lastname or firstname is same.
This means, an author must have a lastname
and a firstname and not a NULL.
CHECK constraints enforce domain integrity
by limiting the values that are accepted by a column.
Author relation does not have a suitable attribute where-in
the check constraint can be explained easily.
So I will take the example of Book relation.
The year attribute is the year in which a particular book is published.
Would it be meaningful to have a year greater than the current year 2010?
This concludes this presentation.
Thank you for watching.
To learn more, visit DB2university.com
file:///D|/00_Raul_D/00_Work/_db2university.com/_FINAL%...I/Transcripts/07_Relational%20Model%20Constraints_2.txt (2 of 2)1/9/2011 9:57:50 PM
