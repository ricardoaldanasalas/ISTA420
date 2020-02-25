# TSQL Homework 07
## Name: Ricardo Aldana Salas
## Date: February 10, 2020
---

##### 1.What is a window function?
1.  Window function operate on a set of rows and return a single value for each row from the underlying query.
---
##### 2.What does PARTITION do?
2. Is a way to divide a large table into smaller, more manageable parts without having to create separate tables for each part.
--
##### 3.What does ORDER BY do?
3. Is used to sort the fetched data in either ascending or descending according to one or more columns.
---
##### 4.What does ROWS BETWEEN do?
4. is used to determine group for calculating aggregation. You specify the rows which shall be considered for calculating measures.
---
##### 5.What is a ranking window function? Why would you use it? Give an example.
5. Is a windows function that assigns a rank to each row within a partition of a result set. It is use to rank specific field values and categorize them according to the rank of each row, resulting in a single aggregated value for each participated row.
---
##### 6.What is an offset window function? Why would you use it?
6. It allows you to return data from other rows based on their distance away from the current row.  For example one might want to return all of the purchases made today but in the same row return the value of the previous purchase that the customer made.
---
##### 7.What do LEAD and LAG DO?
7. They are useful functions that helps to access values from previous records, and Lead functions helps to access values from next records in the data set. Both work over statements.
---
##### 8.What do FIRST VALUE and LAST VALUE do?
8. It allows you to retrun the first and alst result from an ordered set.
---
##### 9.What is an aggragate window function? Why would you use it?
9. Is similar to an ordinary aggregate function, except adding it to a query does not change the number of rows return. Instead for each row the result of the aggregate function is as if the corresponding aggregate were run all rows in the windows frame specified by the over clause.
CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
INSERT INTO t1 VALUES   (1, 'A', 'one'  ),
                        (2, 'B', 'two'  ),
                        (3, 'C', 'three'),
---
##### 10.What is a pivot table and what does it do?
10. It rotates a table-valued expression. It turns the unique values in one column into multiple columns in the output and performs aggregations on any remaining columns values.
---
##### 11.In mathematical theory, what is a power set? How does this definition of power set relate to grouping sets?
11. The power set S is the set of all subsets of S, including the empty set and S itself.
---
##### 12.What is a bit array? How can you implement a bit array to represent a set of flags?
12. A bit array is an array data structure that compactly stores bits. It can be used to implement a simple set data structure.
##### 13.How would interpret this command: chmod 755 myscript.sql?
13. It adds the execute permission for all users to the existing permission. 
