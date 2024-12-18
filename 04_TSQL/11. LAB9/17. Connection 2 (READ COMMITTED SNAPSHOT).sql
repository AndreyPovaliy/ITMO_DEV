ALTER DATABASE [test_block] SET READ_COMMITTED_SNAPSHOT ON;

-- Connection 2
BEGIN TRAN;
SELECT [ID], [Price] FROM dbo.[t1] WHERE [ID] = 2;

-- Connection 2
SELECT [ID], [Price] FROM dbo.[t1] WHERE [ID] = 2;