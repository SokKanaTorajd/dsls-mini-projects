CREATE VIEW OrderDetailsView AS
SELECT 
  [Order Details].OrderID, 
  [Order Details].ProductID, 
  Products.ProductName, 
  [Order Details].UnitPrice, 
  [Order Details].Quantity, 
  [Order Details].Discount, 
  ([Order Details].UnitPrice * [Order Details].Quantity * (1 - [Order Details].Discount)) AS TotalPrice 
FROM 
  [Order Details] 
  JOIN Products 
  ON [Order Details].ProductID = Products.ProductID;


