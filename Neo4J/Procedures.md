Procedures
===================
User-defined procedures are written in Java, deployed into the database, and called from Cypher.
A procedure is a mechanism that allows Neo4j to be extended by writing custom code which can be invoked directly from Cypher. Procedures can take arguments, perform operations on the database, and return results.

Procedures are written in Java and compiled into jar files. They can be deployed to the database by dropping a jar file into the `$NEO4J_HOME/plugins` directory on each standalone or clustered server. The database must be re-started on each server to pick up new procedures.

Procedures are the preferred means for extending Neo4j. Examples of use cases for procedures are:

* To provide access to functionality that is not available in Cypher, such as manual indexes and schema introspection.

* To provide access to third party systems.

* To perform graph-global operations, such as counting connected components or finding dense nodes.

* To express a procedural operation that is difficult to express declaratively with Cypher.
