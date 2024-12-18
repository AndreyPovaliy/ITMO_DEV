USE tempdb
GO
SELECT CostomerId, CostomerFirstName,
CostomerOtherInitials, CostomerLastName
INTO dbo.Customers
FROM ApressFinancial.CustomerDetails.Customers


DELETE FROM dbo.Customers
WHERE CostomerId = 4


DELETE FROM dbo.Customers


TRUNCATE TABLE dbo.Customers