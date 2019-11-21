Neo4j - Create a Constraint using Cypher

Create an Index
Select Data 
A constraint allows you to place restrictions over the data that can be entered against a node or a relationship.
Constraints help enforce data integrity, because they prevent users from entering the wrong kind of data. If a someone tries to enter the wrong kind of data when a constraint has been applied, they will receive an error message.
Constraint Types
In Neo4j, you can create uniqueness constraints and property existence constraints. 
Uniqueness Constraint
Specifies that the property must contain a unique value (i.e. no two nodes with an Artist label can share a value for the Name property.)
Property Existence Constraint
Ensures that a property exists for all nodes with a specific label or for all relationships with a specific type. Property existence constraints are only available in the Neo4j Enterprise Edition.
Create a Uniqueness Constraint
To create a uniqueness constraint in Neo4j, use the CREATE CONSTRAINT ON statement. Like this:
  
  
  CREATE CONSTRAINT ON (a:Artist) ASSERT a.Name IS UNIQUE

In the above example, we create a uniqueness constraint on the Name property of all nodes with the Artist label. 
When the statement succeeds,the following message is displayed:
  
  When you create a constraint, Neo4j will create an index. Cypher will use that index for lookups just like other indexes.
Therefore, there's no need to create a separate index. In fact, if you try to create a constraint when there's already an index, you will get an error.
View the Constraint
Constraints (and indexes) become part of the (optional) database schema.
We can view the constraint we just created by using the :schema command. Like this:
  
  
  :schema

You will see the newly created constraint, as well as the index that was created with it. We can also see the index that was created previously:
  
  Test the Constraint
You can test that the constraint actually works by attempting to create the same artist twice.
Run the following statement twice:
  
<pre><code>  
  CREATE (a:Artist {Name: "Joe Satriani"}) 
RETURN a
</code></pre>

The first time you run it, the node will be created. The second time you run it, you should receive the following error message:
  
  Property Existence Constraints

Property existence constraints can be used to ensure all nodes with a certain label have a certain property. For example, you could specify that all nodes labelled with Artist must contain a Name property.
To create a property existence constraint, use the ASSERT exists(variable.propertyName) syntax.
Like this:
  
  
  CREATE CONSTRAINT ON (a.Artist) ASSERT exists(a.Name)

Note that property existence constraints are only available in the Neo4j Enterprise Edition.
Create an Index
Select Data 
