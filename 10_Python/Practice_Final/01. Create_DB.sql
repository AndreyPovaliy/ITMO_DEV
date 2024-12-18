CREATE DATABASE FarmerMarket
ON
PRIMARY
( NAME = N'FarmerMarket',
FILENAME = N'C:\Program Files\Microsoft SQL
Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\FarmerMarket.mdf' ,
SIZE = 3072KB ,
MAXSIZE = UNLIMITED ,
FILEGROWTH = 1024KB ),
FILEGROUP SECONDARY
( NAME = N'FarmerMarket',
FILENAME = N'C:\Program Files\Microsoft SQL
Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\FarmerMarket_act.ndf' ,
SIZE = 3072KB ,
MAXSIZE = UNLIMITED ,
FILEGROWTH = 1024KB )
LOG ON
( NAME = N'FarmerMarket_log',
FILENAME = N'C:\Program Files\Microsoft SQL
Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\FarmerMarket_log.ldf' ,
SIZE = 1024KB ,
MAXSIZE = 2048GB ,
FILEGROWTH = 10%)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO


-- удалить БД
/*USE Master
GO
DROP DATABASE ApressFinancial*/