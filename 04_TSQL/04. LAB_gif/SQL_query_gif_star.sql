CREATE DATABASE MyDB
ON
PRIMARY
	(NAME = MyDB_Prm,
	FILENAME ='D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\04. LAB_gif\MyDB_Prm.mdf',
	SIZE = 4MB,
	MAXSIZE = 100MB,
	FILEGROWTH= 20MB

	),
FILEGROUP MyDB_FG1
	(NAME = MyDB_FG1_1,
	FILENAME ='D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\04. LAB_gif\MyDB_FG1_1.ndf',
	SIZE = 1MB,
	MAXSIZE =100MB,
	FILEGROWTH=20MB

	),
	
	(NAME = MyDB_FG1_2,
	FILENAME ='D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\04. LAB_gif\MyDB_FG1_2.mdf',
	SIZE = 1MB,
	MAXSIZE =100MB,
	FILEGROWTH=20MB

	)

LOG ON
	(NAME = MyDB_log,
	FILENAME ='D:\Библиотека\Образование\Инженер- программист\04. Transact SQL и реализация баз данных MS SQL Server\4. Решение задач\LABsSQL2022\04. LAB_gif\MyDB_Prm.ldf',
	SIZE = 1MB,
	MAXSIZE =100MB,
	FILEGROWTH=20MB
	)
	
GO

ALTER DATABASE MyDB 
  MODIFY FILEGROUP MyDB_FG1 DEFAULT;
GO