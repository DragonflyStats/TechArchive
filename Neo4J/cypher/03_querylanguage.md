Neo4j Query Language - Cypher

    Neo4j Browser
    Create a Node

Neo4j has its own query language called Cypher. Cypher uses a similar syntax to SQL (Structured Query Language).
Example

Here's an example of a Cypher statement:
<pre><code>
MATCH (p:Person { name:"Homer Flinstone" })

RETURN p
</code></pre>
This Cypher statement returns a "Person" node where the name property is "Homer Flinstone".

If this was SQL querying a relational database, it might look more like this:
<pre><code>
SELECT * FROM Person

WHERE name = "Homer Flinstone";
</code></pre>
However, remember, Neo4j doesn't store its data in tables like the relational database model. It's all in nodes and relationships. So the Cypher query above is querying nodes, their labels, and their properties. The SQL example on the other hand, is querying tables, rows, and columns.

SQL was designed to be used with relational database management systems (DBMS). Neo4j is a NoSQL DBMS, in that it doesn't use the relational model and it doesn't use SQL.

Cypher was designed specifically for working with the Neo4j data model, which is all about nodes and their relationships with each other.
ASCII-Art Syntax

Cypher uses ASCII-Art to represent patterns. This is a handy thing to remember when first learning the language. If you forget how to write something, just visualise how the graph will look and it should help.

<pre><code>
(a)-[:KNOWS]->(b)
</code></pre>

The main things to remember:

    Nodes are represented by parentheses, which look like circles. Like this: (node)
    Relationships are represented by arrows. Like this: ->
    Information about a relationship can be inserted between square brackets. Like this: [:KNOWS]

Defining the Data

Here are some more points to remember when working with Cypher:

* Nodes usually have labels. Examples could include "Person", "User", "Actor", "Employee", "Customer".
* Nodes usually have properties. Properties provide extra information about the node. Examples could include "Name", "Age", "Born", etc
* Relationships can also have properties.
* Relationships usually have a type (this is basically like a node's label). Examples could include "KNOWS", "LIKES", "WORKS_FOR", "PURCHASED", etc.

So looking at the above example again:
<pre><code>
MATCH (p:Person { name:"Homer Flinstone" })

RETURN p
</code></pre>

We can see that:

*  The node is surrounded by parentheses ().
*  Person is the node's label.
*  name is a property of the node.
