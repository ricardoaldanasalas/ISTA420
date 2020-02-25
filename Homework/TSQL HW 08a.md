# TSQL Homework 08a
## Name: Ricardo Aldana Salas
## Date: February 17, 2020
---

##### 1.When using INSERT, is the list of columns necessary?
1.  One can insert table without providing a column list but it has no valid use at all.. Insert column is essential.
---
##### 2.When using INSERT SELECT, do you use a subquery?? Under what circumstances do you not use a subquery?

2. Yes. subquery can be used with Insert statement. The insert statement uses the data returned form the subquery to insert into another table. subquery are not allowed in the select clause of an updateable cursor defined by declared cursor.
--
##### 3.What is the operand for the INSERT EXEC statement?
3. You execute a store procedure which store a set of instructions.
---
##### 4.How would you use the INSERT INTO statement?
4. INSERT INTO table-name (column-names)
 VALUES (values)
---
##### 5.What are the parameters to the BULK INSERT statement?
5. BULK INSERT table-name
FROM
---
##### 6.Does IDENTITY guarantee uniqueness?
6. An identity column is unique. It must be enforced by using a primary key or unique constraint or unique index.
---
##### 7.How do you create a SEQUENCE object?
7. CREATE SEQUENCE sequence_name AS INT
    MINVALUE1 1
    CYCLE;
---
##### 8.How do you use a SEQUENCE object?
8. As an alternative key-generating mechanism for identity.  IT is not tied to a particular column in a particular table.
---
##### 9.How do you alter a SEQUENCE object?
9. One must change the data type, drop and create the sequence object.
---
##### 10.What is the difference between DELETE and TRUNCATE?
10. Delete is a DML command which operation can be rolled back/undone, while truncate operations cannot be rolled back.
---
##### 11.What is the difference between DELETE and DROP TABLE?
11. Delete performs conditional based deletion, whereas DROP command deletes entire record in the table. Deletes only removes the rows in the table. DROP command removes all the data in the table and that table strucutre.
---
