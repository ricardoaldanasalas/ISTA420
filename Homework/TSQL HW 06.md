# TSQL Homework 06
## Name: Ricardo Aldana Salas
## Date: February 09, 2020
---

##### 1.What does a set operator do?
1.  They are use to combined the result sets returned by two separate queries into a single result set.
---
##### 2.What are the general requirements of a set operator
2. One must retrieve the same number and the data types of corresponding columns in each involved SELECT must be compatible  either the same or with possibility implicitly convert to the data types of the first SELECT statement.
--
##### 3.What is a Venn Diagram?
3. It shows the joins types which allows all possible logical relations between data sets.
---
##### 4.Draw a Venn Diagram of the UNION operator. What does it do?
4. It is the numbers that are either SET A or SETB. it is represented by U.
---
##### 5.Draw a Venn Diagram of the UNION ALL operator. What does it do?
5. It unifies the two input query results without attempting to remote duplicates from the result.
---
##### 6.Draw a Venn Diagram of the INTERSECT operator. What does it do?
6.  returns only the rows that are common to the result of the two input queries.
---
##### 7.If SQL Server supported the INTERSECT ALL operator, what would it do?
7.  It means the duplicate intersections will not be removed. It returns the number of duplicate rows matching the lower of the counts in both input multisets.
---
##### 8.Draw a Venn Diagram of the EXCEPT operator. What does it do?
8. Implements set differences. It operates the result of two input queries and returns rows that appear in the first input but not the second.
---
##### 9.. If SQL Server supported the EXCEPT ALL operator, what would it do?
9. Same as Except operator but it also takes into account the number of occurrences of each row.
---
##### 10.What is the precedence of the set operators?
10. If more than two component queries are combined using set operators, then it evaluates the set operators from left to right.
---
##### 11.
11.
