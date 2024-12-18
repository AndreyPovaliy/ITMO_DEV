USE [test_block];

-- Connection 1
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRAN;
SELECT [ID], [Name], [Price], [Discount]
FROM dbo.[t1]
WHERE [Discount] < 0.20;


-- Зафиксировать транзакцию
SELECT [ID], [Name], [Price], [Discount]
FROM dbo.[t1]
WHERE [Discount] < 0.20;
COMMIT TRAN;

--возврат уровня изоляции к значению, принятому по умолчанию
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;