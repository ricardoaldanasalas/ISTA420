--T-SQL-Lab 3
--Date: January 28, 2020
Select OrderId, FirstName, LastName, OrderDate
	from Orders as o
	inner join Employees as E
	on o.EmployeeID = E.EmployeeID;

--2
select e.EmployeeID, e.firstname, e.lastname, o.orderid, orderdate
	from employees e, orders o 
	where e.EmployeeID = o.EmployeeID;

--3
Select ProductName, CompanyName
	from Products as P
	inner join Suppliers as S
	on P.SupplierID = S.SupplierID
	order by Companyname asc;

--4
select sum(Quantity), unitprice, orderdate, ProductID
	from [Order Details] as od
	inner join orders as o
	on od.OrderID = o.OrderID
	where OrderDate = ('1998-05-5')
	group by ProductID, UnitPrice, OrderDate
	order by ProductID;

--5
select ProductName, od.UnitPrice, sum(Quantity) as Quantity
	from Orders as o
	  join [Order Details] as od
	    on o.OrderID = od.OrderID
	  join Products as P
	    on od.ProductID = p.ProductID
	where OrderDate = '1998-5-5'
	group by p.ProductID, ProductName, od.UnitPrice;

--6
select C.CompanyName, s.CompanyName
	from Orders as o
	join Shippers as s
	  on o.ShipVia = s.ShipperID
	join Customers as c
	  on o.CustomerID = c.CustomerID
	where MONTH(orderdate) = 5
	  and year(orderdate) = 1998;
--7
select c.CompanyName, e.FirstName + ' ' + e.LastName as customer
	from Orders as o
	join Customers as c
	 on o.CustomerID = c.customerid
	join Employees as e
	 on o.EmployeeID = e.EmployeeID
	Where ShipCountry = 'France';
--8
select  distinct ProductName
	from orders as o
	join [Order Details] as od
	 on o.OrderID = od.OrderID
	join Products as p
	 on od.ProductID = p.ProductID
	where ShipCountry = 'Germany'
	order by ProductName asc;

select *
	from orders;

select o.shipcountry, e.EmployeeID, o.Freight, o.ShipName
	from Orders as o
	join Customers as c
	 on o.CustomerID = c.customerid
	join Employees as e
	 on o.EmployeeID = e.EmployeeID
	Where ShipCountry = 'Germany';

select distinct EmployeeID, RegionDescription
	from region as R
	join Territories as T
	  on R.RegionID = T.RegionID
	join EmployeeTerritories as ET
	  on T.TerritoryID = ET.TerritoryID;