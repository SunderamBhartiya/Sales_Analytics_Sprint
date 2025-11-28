SELECT customers.City, SUM(sales.Amount) AS Total_Sales FROM hackstudio.sales INNER JOIN hackstudio.customers ON sales.CustomerID = customers.CustomerID GROUP BY customers.City;
SELECT customers.*, sales.Amount FROM hackstudio.sales INNER JOIN hackstudio.customers ON sales.CustomerID = customers.CustomerID ORDER BY sales.Amount DESC LIMIT 3;
SELECT MONTH(SaleDate) AS SaleMonth, SUM(Amount) AS TotalAmount  FROM hackstudio.sales GROUP BY MONTH(SaleDate);
SELECT customers.* FROM hackstudio.customers LEFT JOIN hackstudio.sales ON customers.CustomerID = sales.CustomerID WHERE sales.CustomerID IS NULL;
SELECT customers.City, AVG(customers.Age) AS AverageAge FROM hackstudio.customers GROUP BY customers.City;