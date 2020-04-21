# SQL Homework 11a
## Name: Ricardo Aldana Salas
## Date: April 17, 2020
---

##### 1.Why do we use variables in T-SQL? How do you declare and initialize T-SQL variables? Can you declare and initialize a variable in a single step?

1.  So you can control roots. supply value in columns. Call a sql statement.
---
##### 2. Why is the assignment SET method for setting a variable safer than the assignment SELECT method?
2. Because it assigns a value to the variable returns a signle value onl.
--
##### 3. . Describe what is meant by a batch file in T-SQL? What is the difference between batches and transactions?
3. Can have multiple transaction. Go tells program is not a sequel statement GO is a command for a particular program.
---
##### 4.. Can a transaction be split between multiple batches? Can a batch be split between multiple transactions? Explain
4. Can be summit in parts as multiple batches. 2. it can have multiple transaction. Nothing... no relation
---
##### 5. What is meant when the book says that “a batch is a unit of resolution?” Explain binding
5. Is using a place holder instead of a variable.  You bind the batch on a object. Forming the same methos as the curly bracket in C#
---
##### 6.What is the scope of variables with respect to T-SQL batches?
6. Is an object that can hold a single data value.
---
##### 7. Give a practical example of the use of the GO n operator that is not in the book.
7. DECLARE @Name NVARCHAR(50) = 'Ricardo D Aldana'
SELECT @Name AS 'Name'
GO
DECLARE @Name NVARCHAR(50) = 'Ricardo'
SELECT @Name AS 'Name'
---
##### 8. How to you delimit if ...else constructions that contain multiple statements?
8. ALl records that match the same condition get the exact same values in value1 and value2.
---
##### 9. Does T-SQL provide a SWITCH ...CASE type of construct? See chapter 2 if you don’t recall. If it exists, is it interchangeable with the if ...else construct?
9. Yes. It can be use in select queries along with where and order.
---
##### 10. What is the difference between a relation and a cursor?
10. a curso is used to retrieve a set of results and tehn loop through the 1 row at a time. A relation is a way of linking one table to antoher.
---
##### 11. What are the specific steps to use a cursor?
11. DECLARE, SET/SELECT, DECLARE CURSOR, OPEN, FFETCCH NEXT, WHILE, BEGIN...END, CLOSE, DEALLOCATE.
---
##### 12.What is the scope of a local temporary table?
12. Local tables are visible only in the current session. so it create a temporary table.
---
##### 13. When are global temporary tables destroyed?
13. They are only destroyed when the current user disconnected and all the sessions referring to it closed. It means no user sessions refers it.
---
##### 14. Why would you refer to use a local temporary table instead of a table variable?
14. Table variable is created in the memory. temporary table is created in teh tempdb database. temp tables are allowed create indexes. whereas, Table variables arent' allowed create index instead tehy can have index by using primary keys.
---
##### 15. What is a table type? What is the syntax for creating a table type? Whhat is the syntax for using a table type?
15. Is a temp table. CREATE TYPE [ schema_name. ] type_name  {
---
