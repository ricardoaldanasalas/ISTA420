# TSQL HW 2c
## Name: Ricardo D Aldana Salas
---
##### 1. List the date/time types in T-SQL.
1. Time, date, smalldatetime, datetime, datetime2, datetimeoffset.
---
##### 2. How do you express a date/time literal in T-SQL?
2. By using the CAST and CONVERT.
---
##### 3. What is the setting DATEFORMAT used for?
3. It allows to INSERT/UPDATE dates with different format without doing any special data conversions. The setting of SET DATEFORMAT is set at execute or run time and not at parse time.
---
##### 4. Write a T-SQL snippet changing the date format to German. Read the documentation on how to do this.
4. select convert(datetime, '01.26.2020' , 104)
---
##### 5. What is the difference between CAST(), CONVERT(), and PARSE()?
5. CAST() doesn't support the style argument, PARSE() doesn't convert from a date/time to a string value. Convert() converts an expression of one data type to another.
---
##### 6. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.
6. CURRENT_DATE returns the current date.
---
##### 7. How do you add one day to the current date? Add one week? Add one month? Add one year?
7. To add a year: SELECT DATEADD(year, 1, '2020.01.26') AS DateAdd;
7. To add one month: SELECT DATEADD(month, 1, '2020.01.26') AS DateAdd;
7. To add one week: SELECT DATEADD(week, 1, '2020.01.26') AS DateAdd;
7. To add one day: SELECT DATEADD(1, '2020.01.26') AS DateAdd;
---
##### 8. Write a SQL snippet to return the number of years between your birth date and today’s date.
8. select "Years: ",(julianday('now')-julianday('1990-11-01')) * 0.002738;
---
##### 9. How do you check a string literal to see if it represents a valid date?
9. SELECT replace(convert(varchar, getdate(), 101),'/'")
---
##### 10. What does EAMONTH() do? Give an example of why this might be very useful.
10. Is used to display the last month of a given date. Its useful because it allows you to add a second argument.
---
##### 11. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.
11. I would use the EAMONTH query as it is use to display the last month of a given date.
---
##### 12. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this.
Select datediff(dat,'1990.11.01', 'now');
