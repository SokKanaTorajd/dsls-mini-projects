SELECT DISTINCT(CompanyName) 
FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN [Order Details] ON Orders.OrderID = [Order Details].orderID 
JOIN Products ON [Order Details].productID = Products.ProductID
WHERE MONTH(OrderDate) = 6 AND YEAR(OrderDate) = 1997 AND ProductName = 'Chai';