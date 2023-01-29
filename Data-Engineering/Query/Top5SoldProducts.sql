SELECT TOP 5 p.ProductName Product_Name, 
SUM(od.Quantity) as Total_Ordered 
FROM [Northwind].[dbo].[Order Details] as od
JOIN [dbo].[Products] as p ON od.ProductID = p.ProductID 
JOIN [dbo].[Orders] as o ON od.OrderID = o.OrderID 
WHERE MONTH(o.OrderDate) = 1 AND YEAR(o.OrderDate) = 1997
GROUP BY p.ProductName
ORDER BY Total_Ordered DESC;
