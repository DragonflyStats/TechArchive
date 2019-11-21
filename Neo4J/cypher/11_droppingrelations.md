Neo4j - Delete a Relationship using Cypher

Delete a Node
Database Tutorials 
You can delete relationships in the same way as deleting nodes — by matching the relationship/s you want to delete.
You can delete one or many relationships in one go. You can even delete all relationships in the database.
First, as a memory refresher, here are the relationships that we created earlier:
  
  Let's delete the relationship of type RELEASED.
There are several ways we could go about this. Let's look at three.
The following statement is quite broad — it will delete all relationships of type RELEASED:
  
  
  MATCH ()-[r:RELEASED]-() 
DELETE r

You could also be more specific and write something like this:
  
  
  MATCH (:Artist)-[r:RELEASED]-(:Album) 
DELETE r

The above statement will match all Artist nodes that have a relationship type of RELEASED with an Album node.
You could be even more specific and do something like this:
  
  
  MATCH (:Artist {Name: "Strapping Young Lad"})-[r:RELEASED]-(:Album {Name: "Heavy as a Really Heavy Thing"}) 
DELETE r

Any of those statements will result in the RELEASED relationship being deleted. The graph will look like this:
  
  Deleting Nodes with Relationships Attached
Nodes can't be deleted if they still have relationships attached to them.
If we try to run the following statement:


MATCH (a:Artist {Name: "Strapping Young Lad"}) DELETE a

We will get the following error:

This is because that node has a relationship connected.
One option is to delete all relationships, then delete the node.
Another option is to use the DETACH DELETE clause. The DETACH DELETE clause lets you delete a node and all relationships connected to it.
So we can change the above statment to this:


MATCH (a:Artist {Name: "Strapping Young Lad"}) DETACH DELETE a

Running that statement will result in the following success message:

Delete the Whole Database
You can take the DETACH DELETE a step further and delete the whole database.
Simply remove any filtering criteria and it will delete all nodes and all relationships.
Go ahead and execute the following statement:


MATCH (n) DETACH DELETE n

We no longer have any data in the database... so I guess that's the end of the tutorial :)
If you're interested in learning more about working with Neo4j, check out the official Neo4j documentation.
Delete a Node
Database Tutorials 
