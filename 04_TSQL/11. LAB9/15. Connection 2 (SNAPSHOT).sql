ALTER DATABASE [test_block] SET ALLOW_SNAPSHOT_ISOLATION ON;

-- Connection 2
SET TRANSACTION ISOLATION LEVEL SNAPSHOT;
BEGIN TRAN;
SELECT [ID], [Price] FROM dbo.[t1] WHERE [ID] = 2;


-- Считать данные и зафиксировать трансакцию
SELECT [ID], [Price] FROM dbo.[t1] WHERE [ID] = 2;
COMMIT TRAN;

--Пример сценария с конфликтом обновления.
--  Step 1
UPDATE dbo.[t1]
SET [Price] = 25.00
WHERE [ID] = 2;