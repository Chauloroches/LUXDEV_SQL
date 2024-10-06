CREATE DATABASE production;

use production;

-- Creating table 
CREATE TABLE Sales(
	SaleID INT,
	ProductID INT,
	CustomerID INT,
	SaleDate DATE,
	Amount FLOAT
);

SELECT COUNT(*) FROM sales;

select * from sales;

-- 1.Total Sales of each Product
SELECT ProductID, SUM(SaleID) TotalSales
FROM sales
Group by 1
ORDER BY 1 DESC;

-- 2.Total Sales for each Month
SELECT date_format(SaleDate, '%y-%m') SaleMonth,
		ROUND(SUM(Amount),2) TotalSalePerMonth
FROM Sales
GROUP BY 1
ORDER BY 1;

-- 3.Identify customers who made more than 5 purchases.
SELECT CustomerID,COUNT(SaleID) Purchases
FROM Sales
GROUP BY 1
HAVING Purchases >5;