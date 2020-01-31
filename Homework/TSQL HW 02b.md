# TSQL HW 2b
## Name: Ricardo D Aldana Salas
---
1. 1Q:	A data type is an attribute that specifies the type of data that an object can hold. There is two types of data, regular and Unicode. Regular includes CHAR and VARCHAR and Unicode includes NCHAR and NVARCHAR. Regular uses 1 byte of store and Unicode uses 2 bytes of storage. Is use to differentiate between a single quote and to an expression that you need to specify special characters.

1. 2Q:	A collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity and more.

1. 3Q:	You would use SELECT ltrim(rtrim("  Ricardo "))

1. 4Q:	Select * FROM colleges where collegename like "%instit%"
1. 5Q:	SELECT LEN('Barack Hussein Obama';

1. 6Q:	SELECT substr("Ricardo Aldasna", 1, instr("Ricardo Aldana", " ""));

1. 7Q:	Parenthesis
	Multiplication, Division
	Subtraction, Addition
	NOT
	AND
	OR
	Assignment
1. 8Q:	Parenthesis
	Multiplication, Division
	Subtraction, Addition

1. 9Q:	The simple CASE expression compares an expression to a set of simple expressions to determine the results. The searched CASE expression evaluates a set of Boolean expression to determine the result.

1. 10Q:	REVERSE((FullName),(LastName));

1. 11Q:	SELECT SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) - 1) As FirstName,
	REVERSE(SUBSTRING(REVERSE(FullName),1, CHARINDEX(' ', REVERSE(FullName)) - 1)
	from name.
