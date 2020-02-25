use Northwind;
-- 1. Rank employees by sales, showing thier IDs
Select top(5) EmployeeID, count(employeeID) as TotalSales
	from orders
	group by EmployeeID
	order by TotalSales desc;
--2.

select ProductID, UnitPrice,
		avg(Discount) as AvgDiscount
		--sum(discount) / count(discount) as AvgDiscount
	from [Order Details]
	where UnitPrice > 50.0
	group by ProductID, UnitPrice
	order by UnitPrice desc;
--select top(10) UnitPrice 
	--from [Order Details]
	--where UnitPrice > 50.0
	--order by UnitPrice desc;
--3.
select shipcountry,
count(orderID) as quantity
from orders
group by ShipCountry
having count(orderID) >10
order by quantity desc;
--4.
select orderdate, shippeddate,
    datediff(day, OrderDate,ShippedDate) as lagTime 
	from Orders;
--5.
select avg(cast(datediff(d, orderdate, shippeddate) as float))--datediff(day, OrderDate,ShippedDate)
	from Orders;
--6.
select ProductName, 
	UnitPrice * UnitsInStock as productTotalValue
	from Products
	order by ProductName asc;

--7.
select sum(UnitPrice * UnitsInStock) as totalValue
	from products;
--8.
select CustomerID, EmployeeId,
	count(customerID) as Totalcustomers
	from orders
	group by customerid, EmployeeID
	having count(customerID) > 4
	order by customerID desc

--9
Select DATEDIFF(day, '2014-09-14',getdate());
Select DATEDIFF_big(ns, '2014-09-14',getdate()) as nanosecondsold;


--10. 
select DATEFROMPARTS(year(getdate()), month(getdate()),1);
select eomonth(getdate());
select GETDATE() - 30;
select DATEFROMPARTS(year(getdate()), month(getdate())+ 1,1);
