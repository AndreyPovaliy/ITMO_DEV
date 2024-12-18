USE ApressFinancial
GO
UPDATE CustomerDetails.Customers
SET CostomerLastName = 'Brodie'
WHERE CostomerId = 4

USE ApressFinancial
GO
DECLARE @ValueToUpdate VARCHAR(30)
SET @ValueToUpdate = 'McGlynn'
UPDATE CustomerDetails.Customers
SET CostomerLastName = @ValueToUpdate,
CleareBallance = CleareBallance + UncleareBallance,
UncleareBallance = 0
WHERE CostomerLastName = 'Brodie'


USE ApressFinancial
GO
DECLARE @WrongDataType VARCHAR(20)
SET @WrongDataType = '4311.22'
UPDATE CustomerDetails.Customers
SET CleareBallance = @WrongDataType
WHERE CostomerId = 4