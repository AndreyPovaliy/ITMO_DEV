USE ApressFinancial
GO
IF EXISTS(SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
WHERE TABLE_NAME = 'v_CustFinProducts'
AND TABLE_SCHEMA = 'CustomerDetails')
DROP VIEW CustomerDetails.v_CustFinProducts
GO
CREATE VIEW CustomerDetails.v_CustFinProducts
WITH SCHEMABINDING
AS
SELECT c.CostomerFirstName + ' ' + c.CostomerLastName AS CustomerName,
c.AccountNumber, fp.ProductName, cp.AmountToCollect,
cp.Frequency, cp.LastCollected
FROM CustomerDetails.Customers AS c
JOIN CustomerDetails.CustomersProducts AS cp
ON cp.CustomerId = c.CostomerId
JOIN CustomerDetails.FinancialProducts AS fp
ON fp.ProductID = cp.FinancialProductID