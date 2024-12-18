--создание триггера
USE ApressFinancial
GO
CREATE TRIGGER TransactionDetails.trgInsTransactions
ON TransactionDetails.Transactions
AFTER INSERT
AS
UPDATE CustomerDetails.Customers
SET CleareBallance = CleareBallance +
(SELECT CASE WHEN CreditType = 0
THEN i.Amount * -1
ELSE i.Amount
END
FROM INSERTED AS i
JOIN TransactionDetails.TransactionTypes AS tt
ON tt.TransactionTypesId = i.TransactionType
WHERE AffectCashBalance = 1 )
FROM CustomerDetails.Customers AS c
JOIN INSERTED AS i
ON i.CustomerId = c.CostomerId;

--тест триггера
SELECT CleareBallance FROM CustomerDetails.Customers WHERE CostomerId=1;
INSERT INTO TransactionDetails.Transactions
(CustomerId,TransactionType,Amount,RelatedProductId,DateEntered)
VALUES (1, 2, 200, 1, GETDATE())
SELECT CleareBallance FROM CustomerDetails.Customers WHERE CostomerId=1;


--Моделирование ненадежной транзакции
SELECT CleareBallance FROM CustomerDetails.Customers WHERE CostomerId=1;
INSERT INTO TransactionDetails.Transactions
(CustomerId,TransactionType,Amount,RelatedProductId,DateEntered)
VALUES (1, 3, 200, 1, GETDATE())
SELECT CleareBallance FROM CustomerDetails.Customers WHERE CostomerId=1;


-- изменение тригера
ALTER TRIGGER TransactionDetails.trgInsTransactions
ON TransactionDetails.Transactions
AFTER INSERT
AS
UPDATE CustomerDetails.Customers
SET CleareBallance = CleareBallance +
ISNULL((SELECT CASE WHEN CreditType = 0
THEN i.Amount * -1
ELSE i.Amount
END
FROM INSERTED AS i
JOIN TransactionDetails.TransactionTypes AS tt
ON tt.TransactionTypesId = i.TransactionType
WHERE AffectCashBalance = 1 ), 0)
FROM CustomerDetails.Customers AS c
JOIN INSERTED AS i
ON i.CustomerId = c.CostomerId;
