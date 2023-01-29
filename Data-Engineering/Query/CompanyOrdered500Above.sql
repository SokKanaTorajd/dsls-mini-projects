SELECT
CompanyName
FROM
Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
WHERE
YEAR(OrderDate) = 1997 AND
([Order Details].UnitPrice * [Order Details].Quantity) > 500
GROUP BY
CompanyName;