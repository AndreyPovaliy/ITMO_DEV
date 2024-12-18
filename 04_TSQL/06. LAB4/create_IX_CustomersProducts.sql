-- =============================================
-- Create index IX_CustomersProducts
-- =============================================
USE ApressFinancial
GO

CREATE INDEX IX_CustomersProducts
ON CustomerDetails.CustomersProducts 
(
	CustomerId
)
GO