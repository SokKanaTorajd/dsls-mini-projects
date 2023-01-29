CREATE PROCEDURE Invoice (@CustomerID INT)
AS
BEGIN
    SELECT 
        c.CustomerID, 
        c.CompanyName AS CustomerName,
        o.OrderID, 
        o.OrderDate, 
        o.RequiredDate, 
        o.ShippedDate
    FROM 
        Customers c
    INNER JOIN Orders o ON c.CustomerID = o.CustomerID
    WHERE 
        c.CustomerID = @CustomerID
END
