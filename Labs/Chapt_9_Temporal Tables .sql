---------------------------------------------------------------------
--Name: Ricardo Aldana Salas
--Date: 20200331
--File: SQL Chapter_09Lab
---------------------------------------------------------------------

-- 1

USE TSQLV4;

CREATE TABLE dbo.Departments
(
  deptid    INT                          NOT NULL
    CONSTRAINT PK_Departments PRIMARY KEY,
  deptname  VARCHAR(25)                  NOT NULL,
  mgrid INT                              NOT NULL,
  validfrom DATETIME2(0)
    GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
  validto   DATETIME2(0)
    GENERATED ALWAYS AS ROW END   HIDDEN NOT NULL,
  PERIOD FOR SYSTEM_TIME (validfrom, validto)
)
WITH ( SYSTEM_VERSIONING = ON ( HISTORY_TABLE = dbo.DepartmentsHistory ) );



-- 2 Solution:
SELECT CAST(SYSUTCDATETIME() AS DATETIME2(0)) AS P1;

INSERT INTO dbo.Departments(deptid, deptname, mgrid)
  VALUES(1, 'HR'       , 7 ),
        (2, 'IT'       , 5 ),
        (3, 'Sales'    , 11),
        (4, 'marketing', 13);

-- P1 = 2016-02-18 10:26:07 -- replace this with your time

-- 2-2
-- In one transaction, update the name of department 3 to Sales and Marketing
-- and delete department 4. Call the point in time when the transaction starts P2.

-- Solution:
SELECT CAST(SYSUTCDATETIME() AS DATETIME2(0)) AS P2;

BEGIN TRAN;

UPDATE dbo.Departments
  SET deptname = 'Sales and Marketing'
WHERE deptid = 3;

DELETE FROM dbo.Departments
WHERE deptid = 4;

COMMIT TRAN;




-- Solution:
SELECT CAST(SYSUTCDATETIME() AS DATETIME2(0)) AS P3;

UPDATE dbo.Departments
  SET mgrid = 13
WHERE deptid = 3;

-
-- Desired output:
deptid      deptname                  mgrid
----------- ------------------------- -----------
1           HR                        7
2           IT                        5
3           Sales and Marketing       13

-- Solution:
SELECT *
FROM dbo.Departments;

--

-- Desired output:
deptid      deptname                  mgrid
----------- ------------------------- -----------
1           HR                        7
2           IT                        5
3           Sales and Marketing       11

-- Solution:
SELECT *
FROM dbo.Departments
  FOR SYSTEM_TIME AS OF '2016-02-18 10:29:00'; -- replace this with your time

-- 3-3
-- 
-- 
deptid  deptname             mgrid  validfrom            validto
------- -------------------- ------ -------------------- --------------------
1       HR                   7      2016-02-18 10:26:07  9999-12-31 23:59:59
2       IT                   5      2016-02-18 10:26:07  9999-12-31 23:59:59
3       Sales and Marketing  13     2016-02-18 10:30:40  9999-12-31 23:59:59
3       Sales and Marketing  11     2016-02-18 10:28:27  2016-02-18 10:30:40

-- Solution:
SELECT deptid, deptname, mgrid, validfrom, validto
FROM dbo.Departments
  FOR SYSTEM_TIME BETWEEN '2016-02-18 10:28:27'  -- replace this with your P2
                      AND '2016-02-18 10:30:40'; -- replace this with your P3

-- 4
-- 

-- Solution:
ALTER TABLE dbo.Departments SET ( SYSTEM_VERSIONING = OFF );
DROP TABLE dbo.DepartmentsHistory, dbo.Departments;
