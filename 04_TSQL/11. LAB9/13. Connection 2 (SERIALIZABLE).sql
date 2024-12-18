USE [test_block];

-- Connection 2
INSERT INTO dbo.[t1]
( [Name], [Number], [Price], [Discount])
VALUES('Product ABCDE', 1, 1.00, 0.050);

--возврат уровня изоляции к значению, принятому по умолчанию
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;