USE ApressFinancial
GO
SELECT * FROM CustomerDetails.Customers
SELECT CostomerFirstName, CostomerLastName, CleareBallance
FROM CustomerDetails.Customers
SELECT CostomerFirstName AS 'First Name',
CostomerLastName AS 'Last Name',
CleareBallance 'Balance'
FROM CustomerDetails.Customers