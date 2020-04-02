# SQL Homework 09
## Name: Ricardo Aldana Salas
## Date: March 11, 2020
---

##### 1.What is a temporal table?
1.   Something that allows you to go back in time and see what the situation is during that time.
---
##### 2.Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.
2. Financial statement. We use temporal table in this scenario to see if there was a mistake in a transaction.
--
##### 3.What are the semantics of a temporal table? There are seven of them
3. A primary key, a linked history, a start/end column.
---
##### 4.How do you search a history table?
4. You run a query
---
##### 5.How do you modify a history table?
5. Same a modifying regular table. No support for turnkit.
---
##### 6.How do you delete date from a history table? Why would you want to delete data from a history table?
6. You would never want to delete from the history table.
---
##### 7. How do you search a history table?
7. You run a query
---
##### 8 How do you query all data from both a history file and the current data?
8. Select whatever table it is. AS of @datetime, From @start TO @end
---
##### 9. How do you drop a temporal table?
9. You can't just drop a temporal table. You must first disable versioning, which will cause the history table to become an ordinary table. 
---
