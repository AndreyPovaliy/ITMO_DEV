USE [master]
GO

/****** Object:  Database [ApressFinancial] ******/
CREATE DATABASE [ApressFinancial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ApressFinancial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ApressFinancial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [SECONDARY]  DEFAULT
( NAME = N'ApressFinancial_act', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ApressFinancial_act.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ApressFinancial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ApressFinancial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ApressFinancial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ApressFinancial] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ApressFinancial] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ApressFinancial] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ApressFinancial] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ApressFinancial] SET ARITHABORT OFF 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ApressFinancial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ApressFinancial] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ApressFinancial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ApressFinancial] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ApressFinancial] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ApressFinancial] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ApressFinancial] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ApressFinancial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ApressFinancial] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ApressFinancial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ApressFinancial] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ApressFinancial] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ApressFinancial] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ApressFinancial] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ApressFinancial] SET  MULTI_USER 
GO

ALTER DATABASE [ApressFinancial] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ApressFinancial] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ApressFinancial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ApressFinancial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ApressFinancial] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ApressFinancial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ApressFinancial] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ApressFinancial] SET  READ_WRITE 
GO

/****** Схема ******/
USE ApressFinancial
GO

CREATE SCHEMA CustomerDetails AUTHORIZATION dbo
GO

CREATE SCHEMA TransactionDetails AUTHORIZATION dbo
GO
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

USE ApressFinancial
GO
CREATE TABLE CustomerDetails.CustomersProducts
(
CustomerFinancialProductID bigint IDENTITY (1,1) NOT NULL,
CustomerId bigint NOT NULL,
FinancialProductID bigint NOT NULL,
AmountToCollect money NOT NULL,
Frequency smallint NOT NULL,
LastCollected datetime NOT NULL,
LastCollection datetime NOT NULL,
Renewable bit NOT NULL,
) ON [PRIMARY]
GO
CREATE TABLE CustomerDetails.FinancialProducts
(
ProductID bigint NOT NULL,
ProductName nvarchar(50) NOT NULL
) ON [PRIMARY]
GO

-- Создадим схему ShareDetails и в ней таблицу SharePrices одной инструкцией
CREATE SCHEMA ShareDetails AUTHORIZATION dbo
CREATE TABLE SharePrices (SharePriceID bigint IDENTITY (1,1) NOT
NULL,
ShareID bigint NOT NULL,
Price numeric(18,5) NOT NULL,
PriceDate datetime NOT NULL
)
GO
CREATE TABLE ShareDetails.Shares
(
ShareID bigint IDENTITY (1,1) NOT NULL,
ShareDesc nvarchar(50) NOT NULL,
ShareTickerID nvarchar(50) NULL,
CurrentPrice numeric(18,5) NOT NULL
) ON [PRIMARY]
GO

USE ApressFinancial
GO
CREATE TABLE TransactionDetails.Transactions (
TransactionId bigint IDENTITY (1,1) PRIMARY KEY NOT NULL,
CustomerId bigint NOT NULL,
TransactionType int NOT NULL,
DateEntered datetime NOT NULL,
Amount numeric(18,5) NOT NULL,
ReferenceDetails nvarchar(50) NULL,
Notes nvarchar(max) NULL,
RelatedShareId bigint NULL,
RelatedProductId bigint NOT NULL )


-- =========================================
-- Create table template
-- =========================================
USE ApressFinancial
GO

IF OBJECT_ID('dbo.TransactionTypes', 'U') IS NOT NULL
  DROP TABLE dbo.TransactionTypes
GO

CREATE TABLE TransactionDetails.TransactionTypes
(
	TransactionTypesID int IDENTITY (1,1) NOT NULL, 
	TransactionDescription nvarchar(30) NOT NULL, 
	CreditType bit NOT NULL, 
    
)
GO


USE ApressFinancial
GO
ALTER TABLE TransactionDetails.Transactions
WITH NOCHECK
ADD CONSTRAINT FK_Transactions_Shares FOREIGN KEY (RelatedShareId)
REFERENCES ShareDetails.Shares(ShareID)
GO

USE ApressFinancial
GO
CREATE UNIQUE CLUSTERED INDEX IX_SharePrices
ON ShareDetails.SharePrices
(ShareID ASC, PriceDate DESC, Price)
WITH (STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]

-- =============================================
-- Create index IX_TransactionTypes
-- =============================================
USE ApressFinancial
GO
CREATE UNIQUE CLUSTERED INDEX IX_TransactionTypes
ON TransactionDetails.TransactionTypes
(TransactionTypesId ASC)
WITH (STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO
/* таким образом создали уникальный кластеризованный индекс
для таблицы TransactionDetails.TransactionTypes */
/* теперь создадим некластеризованный индекс
для таблицы TransactionDetails.Transactions
на основе столбца TransactionType*/
CREATE NONCLUSTERED INDEX IX_Transactions_TTypes
ON TransactionDetails.Transactions
(TransactionType ASC)
WITH (STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO


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


USE ApressFinancial
GO
DROP INDEX IX_TransactionTypes ON TransactionDetails.TransactionTypes

USE [ApressFinancial]
GO

SET QUOTED_IDENTIFIER OFF
GO
INSERT INTO [ApressFinancial].[ShareDetails].[Shares]
([ShareDesc]
,[ShareTickerID]
,[CurrentPrice])
VALUES
("ACME'S HOMEBAKE COOKIES INC",'AHCI',2.34125)


USE ApressFinancial
GO

INSERT INTO CustomerDetails.Customers
(CustomerId, CustomerTitleId, CustomerLastName, CustomerFirstName,
CustomerOtherInitials, AddressId, AccountNumber,
AccountTypeId, CleareBalance, UncleareBalance)
VALUES (1,3, 'Lobel', 'Leonard', NULL, 145, 53431993, 1, 437.97, -10.56)


USE ApressFinancial
GO
DELETE FROM CustomerDetails.Customers
DBCC CHECKIDENT ('CustomerDetails.Customers',RESEED,0)
INSERT INTO CustomerDetails.Customers
(CostomerId,CostomerTitleId, CostomerLastName, CostomerFirstName,
CostomerOtherInitials, AddressId, AccountNumber,
AccountTypeId, CleareBallance, UncleareBallance)
VALUES (1,1, 'Brust', 'Andrew', 'J.', 133, 18176111, 1, 200.00, 2.00),
(2,3, 'Lobel', 'Leonard', NULL, 145, 53431993, 1, 437.97, -10.56)


USE ApressFinancial
GO
ALTER TABLE CustomerDetails.CustomersProducts
ADD CONSTRAINT PK_CustomersProducts
PRIMARY KEY CLUSTERED
(CustomerFinancialProductID)
ON [PRIMARY]
GO

ALTER TABLE CustomerDetails.CustomersProducts
WITH NOCHECK
ADD CONSTRAINT CK_CustProds_AmtCheck
CHECK (AmountToCollect > 0 )
GO
ALTER TABLE CustomerDetails.CustomersProducts
WITH NOCHECK
ADD CONSTRAINT DF_CustProds_Renewable
DEFAULT (0)
FOR Renewable
GO


INSERT INTO CustomerDetails.CustomersProducts
(CustomerId,FinancialProductID,AmountToCollect,Frequency
,LastCollected,LastCollection,Renewable)
VALUES (1, 1, -100, 0, '24 Aug 2010', '24 Aug 2010', 0)
INSERT INTO CustomerDetails.CustomersProducts
(CustomerId,FinancialProductID,AmountToCollect,Frequency
,LastCollected,LastCollection,Renewable)
VALUES (1, 1, 100, 0, '24 Aug 2010', '20 Aug 2010', 0)


INSERT INTO CustomerDetails.Customers
(CostomerId, CostomerTitleId, CostomerFirstName, CostomerOtherInitials,
CostomerLastName, AddressId, AccountNumber,
AccountTypeId, CleareBallance, UncleareBallance)
VALUES (4,3, 'Bernie', 'I', 'McGee', 314, 65368765, 1, 6653.11, 0.00),
(5, 2, 'Julie', 'A','Dewson', 2134, 81625422, 1, 53.32, -12.21),
(6, 1, 'Kirsty', NULL,'Hull', 4312, 96565334, 1, 1266.00, 10.32);
INSERT INTO ShareDetails.Shares
(ShareDesc, ShareTickerId,CurrentPrice)
VALUES ('FAT-BELLY.COM','FBC',45.20),
('NetRadio Inc','NRI',29.79),
('Texas Oil Industries','TOI',0.455),
('London Bridge Club','LBC',1.46);


USE ApressFinancial
GO
SELECT * FROM CustomerDetails.Customers
SELECT CostomerFirstName, CostomerLastName, CleareBallance
FROM CustomerDetails.Customers
SELECT CostomerFirstName AS 'First Name',
CostomerLastName AS 'Last Name',
CleareBallance 'Balance'
FROM CustomerDetails.Customers


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