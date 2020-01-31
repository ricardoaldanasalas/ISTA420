# TSQL HW 3
## Name: Ricardo D Aldana Salas
---
##### 1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
1. To stitch the database back together to make it easy to read and use database.
---
##### 2. Describe in your own words the output from an inner join.
2. The Inner Join selects all rows from both tables as long as there is a match between the columns.
---
##### 3. Describe in your own words the output from an outer join
3. To join tables and return specific rows fo data from two or more tables in a database.
---
##### 4. Describe in your own words the output from an cross join.
4. There are used to return every combination of rows from two tables.
---
##### 5. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?
5. Is not because we have cross, inner, outer, composite, non-equil, and multi joins queries.
---
##### 6. Give an example of a composite join
6. ROM dbo.Table1 AS T1 INNER JOIN dbo.Table2 AS T2
ON T1.col1 = T2.col1 AND T1.col2 = T2.col2
---
##### 7. What is the difference between the following two queries?
7. The first queries out put will count all of the C. custID. On the other hand the second queries will count O.oerderID table only.
---
##### 8. What might be one reason the following query does not return teh column custID in this query?
8.  one reason could be that the C.custid table does not exist. Or because C.CusID will be equal to 0.custid.
