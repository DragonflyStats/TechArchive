https://neo4j.com/developer/cypher-query-language/

#### About Cypher

Cypher is a declarative, SQL-inspired language for describing patterns in graphs visually using an ascii-art syntax.

It allows us to state what we want to select, insert, update or delete from our graph data without requiring us to describe exactly how to do it.

cypher pattern simple
Nodes

Cypher uses ASCII-Art to represent patterns. We surround nodes with parentheses which look like circles, e.g. (node). If we later want to refer to the node, we’ll give it an variable like (p) for person or (t) for thing. In real-world queries, we’ll probably use longer, more expressive variable names like (person) or (thing). If the node is not relevant to your question, you can also use empty parentheses ().
	

Usually, the relevant labels of the node are provided to distinguish between entities and optimize execution, like (p:Person).

We might use a pattern like (person:Person)-->(thing:Thing) so we can refer to them later, for example, to access properties like person.name and thing.quality.

The more general structure is:
<pre><code>
MATCH (node:Label) RETURN node.property

MATCH (node1:Label1)-->(node2:Label2)
WHERE node1.propertyA = {value}
RETURN node2.propertyA, node2.propertyB
</code></pre>
Please note that node-labels, relationship-types and property-names are case-sensitive in Cypher. All the other clauses, keywords and functions are not, but should be cased consistently according to the style used here.
Relationships

To fully utilize the power of our graph database we want to express more complex patterns between our nodes. Relationships are basically an arrow --> between two nodes. Additional information can be placed in square brackets inside of the arrow.

This can be
<pre><code>
    relationship-types like -[:KNOWS|:LIKE]->
    a variable name -[rel:KNOWS]-> before the colon
    additional properties -[{since:2010}]->
    structural information for paths of variable length -[:KNOWS*..4]->
</code></pre>
To access information about a relationship, we can assign it a variable, for later reference. It is placed in front of the colon -[rel:KNOWS]-> or stands alone -[rel]->.
	

If you forget the colon in front of a relationship-type, like this -[KNOWS]-> it does represent a variable and the relationship has no relationship-type declared.

General Syntax:

<pre><code>
MATCH (n1:Label1)-[rel:TYPE]->(n2:Label2)
WHERE rel.property > {value}
RETURN rel.property, type(rel)
</code></pre>

#### Patterns

Nodes and relationship expressions are the building blocks for more complex patterns. Patterns can be written continuously or separated with commas. You can refer to variables declared earlier or introduce new ones.

<pre><code>
    friend-of-a-friend (user)-[:KNOWS]-(friend)-[:KNOWS]-(foaf)
    shortest path: path = shortestPath( (user)-[:KNOWS*..5]-(other) )
    collaborative filtering (user)-[:PURCHASED]->(product)<-[:PURCHASED]-()-[:PURCHASED]->(otherProduct)
    tree navigation (root)<-[:PARENT*]-(leaf:Category)-[:ITEM]->(data:Product)
</code></pre>
	

Patterns can be used to MATCH and CREATE data, but also (evaluating to a list of paths) in expressions, predicates and results.

Let’s try out what we’ve learned. See an interactive live example of the exercise below.
First Steps with Cypher
Create a Record for Yourself
<pre><code>
CREATE (you:Person {name:"You"})
RETURN you
</code></pre>

CREATE creates nodes with labels and properties.

You like Neo4j, right?

Let’s find ourselves and add a new relationship to a new node.
<pre><code>
MATCH  (you:Person {name:"You"})
CREATE (you)-[like:LIKE]->(neo:Database {name:"Neo4j" })
RETURN you,like,neo
</code></pre>

CREATE can create single nodes, or more complex structures.

#### Create Your Friends

MATCH (you:Person {name:"You"})
FOREACH (name in ["Johan","Rajesh","Anna","Julia","Andrew"] |
  CREATE (you)-[:FRIEND]->(:Person {name:name}))

FOREACH allows you to execute update operations for each element of a list.
Find Your Friends
<pre><code>
MATCH (you {name:"You"})-[:FRIEND]->(yourFriends)
RETURN you, yourFriends
</code></pre>
Note that we get ourselves repeated for each path found in the graph.
Create Second Degree Friends and Expertise
<pre><code>
MATCH (neo:Database {name:"Neo4j"})
MATCH (anna:Person {name:"Anna"})
CREATE (anna)-[:FRIEND]->(:Person:Expert {name:"Amanda"})-[:WORKED_WITH]->(neo)
</code></pre>

CREATE can also add more complex patterns.

#### first steps friends network
Find Someone in your Network Who Can Help You Learn Neo4j
<code><pre>
MATCH (you {name:"You"})
MATCH (expert)-[:WORKED_WITH]->(db:Database {name:"Neo4j"})
MATCH path = shortestPath( (you)-[:FRIEND*..5]-(expert) )
RETURN db,expert,path
</code></pre>
