
Neo4j - Selecting data with MATCH using Cypher

Create a Constraint
Import Data 
Cypher's MATCH statement allows you to find data that matches a given criteria. You can use MATCH to return the data or to perform some other operation on it. 
The MATCH statement is used to match a given criteria, but it doesn't actually return the data. To return any data from a MATCH statement, we still need to use the RETURN clause.
Retrieve a Node
Here's a simple example of using a MATCH statement to retrieve a node:


MATCH (p:Person)
WHERE p.Name = "Devin Townsend"
RETURN p

The WHERE clause works the same way as SQL's WHERE clause, in that it allows you to narrow down the results by providing extra criteria.
However, you can achieve the same result without using a WHERE clause. You can also search for a node by providing the same notation you used to create the node.
The following code provides the same results as the above statement:
  
  
  MATCH (p:Person {Name: "Devin Townsend"})
RETURN p

Running either of the above queries will result in the following node being displayed:
  
  You may have noticed that clicking on a node expands an outer circle separated into three sections — each representing a different option:
  
  Clicking on the bottom section will expand the node's relationships:

Relationships
You can also traverse relationships with the MATCH statement. In fact, this is one of the things Neo4j is really good at.
For example, if we wanted to find out which artist released the album called Heavy as a Really Heavy Thing, we could use the following query:


MATCH (a:Artist)-[:RELEASED]->(b:Album)
WHERE b.Name = "Heavy as a Really Heavy Thing" 
RETURN a

This will return the following node:

You can see that the pattern we use in the MATCH statement is almost self-explanatory. It matches all artists that released an album that had a name of Heavy as a Really Heavy Thing. 
We use variables (i.e. a and b) so that we can refer to them later in the query. We didn't provide any variables for the relationship, as we didn't need to refer to the relationship later in the query.
You might also notice that the first line uses the same pattern that we used to create the relationship in the first place. This highlights the simplicity of the Cypher language. We can use the same patterns in different contexts (i.e. to create data and to retrieve data).
Return all Nodes
You can return all nodes in the database simply by omitting any filtering details. Therefore, the following query will return all nodes in the database:


MATCH (n) RETURN n

This results in all our nodes being returned: 

You can also click on the Rows icon on the side to display the data in row format: 

Be careful when returning all nodes. Doing this on a large database could have major performance implications. It's generally recommended to limit the results to avoid unintended issues.
See "Limit the Results" below.
Limit the Results
Use LIMIT to limit the number of records in the output. It's a good idea to use this when you're not sure how big the result set is going to be.
So we could simply append LIMIT 5 to the previous statement to limit the output to 5 records:
  
  
  MATCH (n) RETURN n 
LIMIT 5
