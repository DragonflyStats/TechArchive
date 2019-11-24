Video 7.1
Designing a good schema for a database
Higher Level Tools , but some developers use relations.

College Application Info
SSN  name
College applying to
High School attended
Hobbies
Example
apply(SSN,sName,cName,HS,HScity,hobby)

Design "anomalies" 
- Redundancy
- Update anomaly
- deletion anomaly

overcome these anomalies with 5 new relations
STUDENT (SSN,  Name)
APPLY
HIGHSCHOOL
LOCATED
HOBBIES

Demonstration : revert to three relations

Design by decomposition
Decompose mega relation into smaller relaitons
"Normal Form" - No Anomalies, No Lost Information

Functional Dependencies -> Boyce Codd Normal Form
Multivalued Dependencies -> Fourth Noram Form
Also 1NF , 2NF and 3NF

Functional Dependency:SSN -> sName

BCNF if A->B then A is a key
Use FD to decompose relations into BCNF.

SSN ->> cName
Fourth Normal Form : If A->> B then A is a key
Decompose C+H tupes instead of CxH tuples.

4NF is considered stronger than BCNF, and is thought to be good relational design.
(->> Multivalued dependency)
