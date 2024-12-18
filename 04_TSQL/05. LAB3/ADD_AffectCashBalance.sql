--Добавим столбец в таблицу
USE ApressFinancial
GO
ALTER TABLE TransactionDetails.TransactionTypes
ADD AffectCashBalance bit NULL
GO

--Изменим добавленный столбец: он обязательно должен содержать значения 0 или 1
USE ApressFinancial
GO
ALTER TABLE TransactionDetails.TransactionTypes
ALTER COLUMN AffectCashBalance bit NOT NULL
GO

--Добавим первичный ключ

USE ApressFinancial
GO
ALTER TABLE TransactionDetails.TransactionTypes
ADD CONSTRAINT
PK_TransactionTypes PRIMARY KEY NONCLUSTERED (TransactionTypesId)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO
