Database

Neo4j - Drop an Index using Cypher

Import Data
Drop a Constraint 
You can drop an index using the DROP INDEX ON statement. This will remove the index from the database.
So, to drop our previously created index, we can use the following statement:
  
  
  DROP INDEX ON :Album(Name)

When the statement succeeds,the following message is displayed:
  
  View the Schema
You can now use the :schema command to verify that the applicable index has been removed from the schema.
Simply type this:
  
  
  :schema

You will see that the index is no longer in the schema:
  
  Import Data
Drop a Constraint 
