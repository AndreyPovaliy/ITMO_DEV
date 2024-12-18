-- =========================================
-- Create table template
-- =========================================
USE ApressFinancial
GO

IF OBJECT_ID('dbo.TransactionTypes', 'U') IS NOT NULL
  DROP TABLE dbo.TransactionTypes
GO

CREATE TABLE TransactionDetails.TransactionTypes
(
	TransactionTypesID int IDENTITY (1,1) NOT NULL, 
	TransactionDescription nvarchar(30) NOT NULL, 
	CreditType bit NOT NULL, 
    
)
GO