CREATE DATABASE ApressFinancial
ON
PRIMARY
( NAME = N'ApressFinancial',
FILENAME = N'D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\LAB1\ApressFinancial.mdf' ,
SIZE = 3072KB ,
MAXSIZE = UNLIMITED ,
FILEGROWTH = 1024KB ),
FILEGROUP SECONDARY
( NAME = N'ApressFinancial_act',
FILENAME = N'D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\LAB1\ApressFinancial_act.ndf' ,
SIZE = 3072KB ,
MAXSIZE = UNLIMITED ,
FILEGROWTH = 1024KB )
LOG ON
( NAME = N'ApressFinancial_log',
FILENAME = N'D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\LAB1\ApressFinancial_log.ldf' ,
SIZE = 1024KB ,
MAXSIZE = 2048GB ,
FILEGROWTH = 10%)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO