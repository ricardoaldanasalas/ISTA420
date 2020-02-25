# TSQL Homework 08B
## Name: Ricardo Aldana Salas
## Date: February 18, 2020
---

##### 1.. The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.
1.  UPDATE dbo.SalesTax
    Set salestax = salestax 05
    Where State is X
---
##### 2.The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?
2. Unit price * SalesTax
--
##### 3.Explain how the proprietary assignment update command works.
3. It updates data in a table and assigns values to variables at the same time. It can be use in maintaining a custom sequence mechanism when the identity columns property don't work.
---
##### 4.What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?
4. Is used to make changes in one table based on values matched from another. IT can be used to combined insert, update and delete operations into one statement.
---
##### 5.What are the semantics of MERGE?
5. It translate to a combination of several other DML statement like INSERT, UPDATE and DELETE without MERGE.
---
##### 6.Write a typical INSERT OUTPUT statement.
6. DROP TABLE IF EXISTS dbo.T1;
CREATE TABLE dbo.T1 (
     keycol  INT          NOT NULL IDENTITY(1, 1) CONSTRAINT PK_T1 PRIMARY KEY,
     datacol NVARCHAR(40) NOT NULL
   );
---
##### 7.Write a typical UPDATE OUTPUT statement.
7.UPDATE dbo.OrderDetails
    SET discount += 0.05
  OUTPUT
    inserted.orderid, inserted.productid, deleted.discount AS olddiscount, inserted.discount AS newdiscount
    WHERE productid = 51;
---
##### 8.Write a typical DELETE OUTPUT statement.
8. DROP TABLE IF EXISTS dbo.Orders;
  CREATE TABLE dbo.Orders (
---
##### 9.Write a typical MERGE OUTPUT statement.
9. MERGE INTO dbo.Customers AS TGT
    USING dbo.CustomersStage AS SRC
      ON TGT.custid = SRC.custid
      WHEN MATCHED THEN
---
##### 10.What is nested DML?
10. Is used to directly insert in the the final target table only the subset of rows you need from the full set of modified rows.
---
##### 11.(Not in book) Write a query adding a new column to a table named PERSON. The new column name is DayOfBirth and the data type is string. Use ANSI SQL syntax.
11. Alter table Person
    Add Column DayofBirth string Null;
---
##### 12.(Not in book) Write a query adding a DEFAULT constraint to the column DayOfBirth. The constraint is that the value matches one of SUN, MON, TUE, WED, THU, FRI, or SAT.
12. Alter table dbo.doc with Nocheck
and CONSTRAINT
---
##### 13.(Not in book) Write a query adding a foreign key to the column DayOfBirth. The referenced table is named WEEK and the referenced column is ValidDay.
13.  Alter table PERSON
      add foreign key (dayofweek)
        not null reference
          Week(ValidDay)
