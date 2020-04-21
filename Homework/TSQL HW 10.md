# T-SQL Homework 10
## Name: Ricardo Aldana Salas
## Date: April 04, 2020
---

##### 1. What is the purpose of transactions? Why do we use transactions in SQL scripts?
1.  It gices you the ability to return back to a safe state if some error happens in the middle of your sql code.
---
##### 2 .Briefly describe each of the ACID properties.
2. It refers to four key properties of a transaction: atomicity, consistency, isolation, and durability. Atomicity means all operations inside a transaction take place or none.  consistency ensures database consistency.  
--
##### 3. What do we mean when we talk about the granularity of locks?
3. Specifies which resource is locked by a single lock attempt.
---
##### 4. . What do we mean when we talk about the modes of locks?
4. is compatible with (S) locks. Basically it means that multiple sessions can read (SELECT) the same row simultaneously.
---
##### 5. In your ownh words, describe blocking, and give an example.
5. Occurs when a connection to the Sql SERVER locks one or more records and a second conneciton to the sql server requires a confliction lock type on the record.
---
##### 6.What are the properties of locks? That is, list the column name and column type of the fields in sys.dm tran locks.
6. resource_type, resource_subtype, resource_database_id, resource_description.
---
##### 7. What are the properties of sessions? That is, list the column name and column type of the fields in sys.dm exec connections
7. session_id, login_time, host-Name, program_name, host_process_id, client_vestion.l
---
##### 8.. What are the requests of sessions? That is, list the column name and column type of the fields in sys.dm exec requests.
8. last_request_start_time, last_request_end_time.
---
##### 9. What is an isolation level? Give an example of the operation of an isolation level.
9. there are used to define the degree to which one transation must be isolated from resource or data modifications made by other concurrent transation.
---
##### 10. What do we mean when we say that an object is serializable?
10. is an execution of the operation of concurrent xecuting sql-transation tha tproduces the same effect as some serial execution of those same sql-transation
---
##### 11. What is an deadlock? Give an example of a deadlock?
11. A deadlock happens when two or more transation block each othr by holdign locks on resources tha teach of the transation also need.  Example. transation1 holds a lock on tableA.
