SELECT
    CASE
        WHEN (UnitPrice * Quantity) <= 100 THEN '<=100'
        WHEN (UnitPrice * Quantity) BETWEEN 100 AND 250 THEN '100<x<=250'
        WHEN (UnitPrice * Quantity) BETWEEN 250 AND 500 THEN '250<x<=500'
        ELSE '>500'
    END AS PriceRange,
    COUNT([Order Details].OrderID) AS OrderCount
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
GROUP BY
    CASE
        WHEN (UnitPrice * Quantity) <= 100 THEN '<=100'
        WHEN (UnitPrice * Quantity) BETWEEN 100 AND 250 THEN '100<x<=250'
        WHEN (UnitPrice * Quantity) BETWEEN 250 AND 500 THEN '250<x<=500'
        ELSE '>500'
    END
