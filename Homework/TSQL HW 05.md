# TSQL Homework 05
## Name: Ricardo Aldana Salas
## Date: February 02, 2020
---

##### 1. What is a table expression? Can you give a technical definition of a table expression?
1.  A table expression is a named query expression that represent a valid relational table. It can be use in
    data expression such as derived tables and common tables.
---
##### 2. In what SQL clause are derived tables (table valued subqueries) located?
2. Derived tables are defined in the FROM clause of an outer query.
--
##### 3. Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?
3. Because it  helps you get around the fact that you can't refer to column aliases assigned in the SELECT clause in
    query clauses that are logically processed prior to the SELECT clause. The subquery is run before the inner query.
---
##### 4. What SQL key word defines a common table expression?
4. CTEs are defined by using a WITH statement.
---
##### 5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?
5. YEs but it must follow all requirement mentioned in a standard form of table.
---
##### 6. Can a main query refer to a previously defined common table expression by multiple aliases?
6. YEs as long as the CTE already exists.
---
##### 7. In SQL, is a view a durable object?
7. no because no data is actually stored inside of the VIEW itself. Its essentially a dynamic SELECT query.
---
##### 8. In a view, what does WITH CHECK OPTION do? Why is this important?
8. The Check option is to prevent modifications through the view that conflict with the view's filter.
---
##### 9. In a view, what does SCHEMABINDING do? Why is this important?
9. IT bids the schema of referenced objects and columns to the schema of the referencing object. Without it yo would have been allowed to make a schema change the table altogether.
---
##### 10. What is a table valued function?
10. There are useable table expressions that support input parameters.
---
##### 11. What does the APPLY operator do?
11. The APPLY operator operates on two input tables. Ill refer to them as the left and right tables.
---
##### 12. What are the two forms of the APPLY operator? Give an example of each.
12. APPLY: CROSS APPLY and OUTER APPLY.
