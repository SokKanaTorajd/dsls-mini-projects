WITH cte as(
	SELECT MONTH(Orders.OrderDate) AS OrderMonth, 
	Products.ProductName AS ProductName, 
	SUM([Order Details].UnitPrice * [Order Details].Quantity) AS TotalSales
	FROM Orders
	JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
	JOIN Products ON [Order Details].ProductID = Products.ProductID
	WHERE YEAR(Orders.OrderDate) = 1997
	GROUP BY MONTH(Orders.OrderDate), Products.ProductName 
	)
SELECT
  OrderMonth, 
  ProductName, 
  TotalSales
FROM (
  SELECT
    OrderMonth, 
    ProductName, 
    TotalSales, 
    ROW_NUMBER() OVER (PARTITION BY OrderMonth ORDER BY TotalSales DESC) AS Rank
  FROM cte
) AS Sub
;