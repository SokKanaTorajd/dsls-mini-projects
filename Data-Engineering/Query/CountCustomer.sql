SELECT 
MONTH(OrderDate) as Month,
COUNT(CustomerID) as count_customer
FROM [Northwind].[dbo].[Orders]
WHERE YEAR(OrderDate)=1997
GROUP BY MONTH(OrderDate);