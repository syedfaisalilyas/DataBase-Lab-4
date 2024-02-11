Select ProductName 
From Products
Where UnitPrice> (Select AVG(UnitPrice) from Products)


select ShippedDate,COUNT(ShippedDate) numberoforders
from Orders 
group by ShippedDate 


select Country 
from Suppliers
group by Country
having COUNT(Country) >=2


select MONTH(ShippedDate) MonthNumber,COUNT(ShippedDate) OrdersDelayed
from Orders 
where RequiredDate<ShippedDate  
group by MONTH(ShippedDate)  


select OrderID,Sum(Discount) Discount
from [Order Details]
where Discount>0
Group by OrderID


select ShipCity, COUNT(ShippedDate) Numberoforders
from Orders
where ShipCountry = 'USA' AND YEAR(ShippedDate) = 1997
group by ShipCity


select ShipCountry, COUNT(ShippedDate) OrdersDelayed
from Orders
where RequiredDate<ShippedDate
group by ShipCountry


select OrderID,SUM(Discount) Discount,SUM(UnitPrice) TotalPrice
from [Order Details]
where Discount>0
group by OrderID


select ShipRegion,ShipCity,COUNT(*) Orders 
from Orders
where YEAR(ShippedDate) = 1997 
group by ShipRegion,ShipCity