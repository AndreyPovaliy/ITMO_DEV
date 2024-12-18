--1.	Отображает все столбцы в таблице Person--
SELECT *
FROM Person.Person

--2.	Отображает только выбранные столбцы в таблице Person--
SELECT Title, FirstName, LastName, MiddleName
FROM Person.Person

--3.	Получение конкретных строк в таблице
SELECT ProductNumber, Name, ListPrice, Color, Size, Weight
FROM Production.Product
WHERE ListPrice < $100

SELECT ProductNumber, Name, ListPrice, Color, Size, Weight
FROM Production.Product
WHERE ListPrice < $100
AND ProductNumber LIKE 'S0%'



--4.	Фильтрация данных с помощью сравнения строк
SELECT ProductNumber, Name, ListPrice, Color, Size, Weight
FROM Production.Product
WHERE ListPrice < $100
AND ProductNumber LIKE 'S0%'
OR ProductNumber LIKE 'TG%'

--5.	Получение диапазона значений
SELECT ProductNumber, Name, ListPrice, Color, Size, Weight
FROM Production.Product
WHERE ProductNumber LIKE 'S0%'
	OR (LastPrice Betwee $50 and $180
		AND ProductNumber LIKE 'TG%')

--6.	Получение списка значений
SELECT ProductNumber, Name, ListPrice, Color, Size, Weight
FROM Production.Product
WHERE ProductNumber Like  'SO%'
	OR (ListPrice Between $50 and $180
	AND ProductNumber LIKE 'TG%'
	AND Size IN ('M','L'))


--7.	Работа со значениями NULL
SELECT ProductNumber, Name, Weight
FROM Production.Product
WHERE ProductLine = NULL

SELECT ProductNumber, Name, Weight
FROM Production.Product
WHERE ProductLine IS NULL

SELECT ProductNumber, Name, Weight
ISNULL (ProductLine, 'NA')
FROM Production.Product

SELECT ProductNumber, Name, Weight
ISNULL (ProductLine, 'NA') AS 'ProductLine'
FROM Production.Product

SELECT ProductNumber, Name, COALESCE (CONVERT (NVARCHAR, Weight),
SIZE, 'NA')) AS Measurament,
ISNULL (ProductLine, 'NA') AS 'Product Line'
FROM Production.Product

--8.	Сортировка данных--
SELECt ProductNumber, Name, Class
FROM Production.Product
ORDER BY Class
SELECT ProductNumber, Name, Class, ListPrice
FROM Production.Product
ORDER BY Class, ListPrice DESC

--9.	Устранение дублирования строк
SELECT DISTINCT Color
FROM Production.Product
WHERE ProductNumber LIKE 'HL%'

--10.	Использование выражений
SELECT LastName + ',' + FistName
FROM Person.Person

SELECT (LastName + ',' + FistName)
AS Contacts
FROM Person.Person

SELECT (LastName + ',' + FistName) AS Contacts
FROM Person.Person
WHERE SUBSTRING (LastName, 1,3) = 'Mac' 

--11.	Агрегатные функции 
SELECT AVG (VactinationHours)
AS 'AverageVactinationsHours',
SUM (SickLeaveHours) AS 'TotalSickLeave Hours'
FROM HumanResoursces.Emplouee
WHERE Jobtitle LIKE '%Vice President%'

SELECT COUNT(*)
FROM HumanResoursces.Emplouee

--12.	Использование Агрегатных функций с NULL
SELECT COUNT (*)
FROM Person.Address
WHERE INSULL (AddressLine2, '0')='0'

SELECT COUNT (AddressLine2)
FROM Person.Address

SELECT COUNT (DISTINCT AddressLine2)
FROM Person.Address

--13.	Подведение итогов
SELECT ProductID, AVG(DaysToManufacture)
AS 'AvgDaysToManufacture'
FROM Production.Product


--14.	Использование предложения GROUP BY
SELECT Color, AVG(ListPrice) AS 'AvgListPrice'
FROM Production.Product
WHERE ProductNumber = 'FR-R72R-58'
GROUP BY ALL Color


--15.	Использование предложения HAVING
SELECT ProductID, AVG (orderQty)
AS 'AvarageQuantity', SUM (LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY ProductIDHAVING SUM (LineTotal) > $1000000.00 AND AVG (OrderQty) <3

--16.	Как работают операторы ROLLUP и CUBE
SELECT ProductID, Shelf, SUM(Quantity) AS 'QtySum'
FROM Production.ProductInventory
GROUP BY ROLLUP (ProductID, Shelf)

SELECT SlesOrderID, ProductID,
SUM (OrderQty) AS SumQuantity
FROM Sales.SelesOrderDetail
GROUP BY CUBE(SalesOrderID, ProductID)
ORDER BY SalesOrderID, ProductID

SELECT SalesQuota, SUM (SalesYTD) 'TotalSalesYTD',
Grouping (SalesQuota) AS 'Grouping'
FROM Production.ProductInventory
ORDER BY CUBE (SalesQuota)

SELECT ProductID, Shelf, SUM (Quntity) AS 'TotalQuantity'
GROUPING (Shelf) AS 'Shelfgrouping'
FROM  Production.ProductInventory
ORDER BY CUBE (ProductID, Shelf)



--17.	Создание перекрестных запросов
SELECT name, [RED], [BLUE], [BLACK]
FROM (SELECT SafetyStockLevel, Color, Name FROM
Production.Product) PACKAGE

(
		SUM (SafetyStockLevel) FOR Color IN ([RED], [BLUE], [BLACK])
) AS PVT
WHERE Name LIKE '%Helmet%' ORDER BY Name

SELECT Name, Attribute, VALUE
FROM
	( SELECT Name, CAST (ProductLine as SQL_Variant) ProductLine,
	CAST (StandartedCost as Sql_variant) StandardCost,
		CAST (ListPrice as sql_variant) ListPrice
FROM Production.Product) P UNPIVOT (Value FOR Attribute
IN ([ProductLine], [StandartCost], [ListPrice]))
AS UnPVT Order By Name Desc

