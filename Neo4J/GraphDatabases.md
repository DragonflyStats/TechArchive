Graph Databases
===================
A graph database is an online, operational database management system capable of Create, Read, Update, and Delete (tech lingo: CRUD) processes that operate on a graph data model.

There are two important properties of graph database technologies:

### Graph storage
Some graph databases use “native” graph storage that is specifically designed to store and manage graphs, while others use relational or object-oriented databases which are often slower.
Graph processing engine
Native graph processing (tech lingo: index-free adjacency) is the most efficient means of processing data in a graph because connected nodes physically “point” to each other in the database. Non-native graph processing engines use other means to process CRUD operations.
Besides specifics around storage and processing, graph databases also adopt distinct data models. The most common graph data models include property graphs, hypergraphs and triples.

Let’s dive into each of these below.

### Property Graphs

Property graphs are the type of graph database we’ve already talked about most. In fact, our original definition of a graph database was more precisely about a property graph.

Here’s a quick recap of what makes a graph database a property graph:
Property graphs contains nodes (data entities) and relationships (data connections).
Nodes can contain properties (tech lingo: key-value pairs).
Nodes can be labeled with one or more labels.
Relationships have both names and directions.
Relationships always have a start node and an end node.
Like nodes, relationships can also contain properties.
(It’s worth noting that Neo4j is a property graph database.)

### Hypergraphs

A hypergraph is a graph model in which a relationship (called a hyperedge) can connect any number of given nodes. While a property graph permits a relationship to have only one start node and one end node, the hypergraph model allows any number of nodes at either end of a relationship.

Hypergraphs can be useful when your data includes a large number of many-to-many relationships.

Let’s look at the example below.


#### A Hypergraph Data Model


In this simple (directed) hypergraph, we see that Alice and Bob are the owners of three vehicles, but we can express this relationship using a single hyperedge. In a property graph, we would have to use six relationships to express the concept.

In theory, hypergraphs should produce accurate, information-rich data models. However, in practice, it’s very easy for us to miss some detail while modeling. For example, let’s look at the figure below, which is the property graph equivalent of the hypergraph shown above.

