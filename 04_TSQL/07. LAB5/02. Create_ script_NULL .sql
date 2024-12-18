USE ApressFinancial
GO

INSERT INTO CustomerDetails.Customers
(CustomerId, CustomerTitleId, CustomerLastName, CustomerFirstName,
CustomerOtherInitials, AddressId, AccountNumber,
AccountTypeId, CleareBalance, UncleareBalance)
VALUES (1,3, 'Lobel', 'Leonard', NULL, 145, 53431993, 1, 437.97, -10.56)