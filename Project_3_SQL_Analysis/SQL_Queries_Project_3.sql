--Verify the import
SELECT COUNT(*) FROM dbo.Orders;
SELECT TOP 10 * FROM dbo.Orders;

--Fix data types/rounding
UPDATE dbo.Orders
SET UnitPrice= ROUND(UnitPrice, 2),
	TotalPrice= ROUND(TotalPrice, 2);

--Basic queries with Condition
SELECT OrderID, Product, TotalPrice
FROM dbo.Orders
WHERE OrderStatus = 'Returned';

--Top 10 Orders by Value
SELECT TOP 10 OrderID, Product, Quantity, TotalPrice
FROM dbo.Orders
ORDER BY TotalPrice DESC;

--Revenue by Product
SELECT Product, COUNT(*) AS Orders, SUM(TotalPrice) AS Revenue, AVG(TotalPrice) AS AvgOrder
FROM dbo.Orders
GROUP BY Product
ORDER BY Revenue DESC;

--Product with Revenue above a threshold
SELECT Product, SUM(TotalPrice) AS Revenue
FROM dbo.Orders
GROUP BY Product
Having SUM(TotalPrice)> 50000;