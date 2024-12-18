USE ApressFinancial
GO
INSERT INTO CustomerDetails.FinancialProducts (ProductID,ProductName)
VALUES (1, 'Regular Savings'),
(2, 'Bonds Account'),
(3, 'Share Account'),
(4, 'Life Insurance');
INSERT INTO CustomerDetails.CustomersProducts
(CustomerId,FinancialProductID,AmountToCollect,
Frequency, LastCollected, LastCollection, Renewable )
VALUES (1, 1, 200, 1, '2008-10-31T18:10:00', '2025-10-31T18:10:00', 0),
(1, 2, 50, 1, '2010-10-24T18:10:00', '2012-03-24T18:10:00', 0),
(2, 4, 150, 3, '2010-10-20T18:10:00', '2010-10-20T18:10:00', 1),
(3, 3, 500, 0, '2010-10-24T18:10:00', '2010-10-24T18:10:00', 0);