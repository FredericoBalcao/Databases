--JOIN
USE Vendas

Select * From SalesLT.ProductCategory PC, SalesLT.Product P
Where PC.ProductCategoryID = P.ProductCategoryID
--295 REGISTOS
Select * From SalesLT.ProductCategory PC
	JOIN SalesLT.Product P ON PC.ProductCategoryID = P.ProductCategoryID
--299 REGISTOS
Select * From SalesLT.ProductCategory PC
	LEFT JOIN SalesLT.Product P ON PC.ProductCategoryID = P.ProductCategoryID
--295 REGISTOS
Select * From SalesLT.ProductCategory PC
	RIGHT JOIN SalesLT.Product P ON PC.ProductCategoryID = P.ProductCategoryID

--CASO PRATICO SQL-DML (ficha)
--1
USE Vendas
Select TOP 10 A.City, PC.Name, SUM(SOH.TotalDue) as Total From SalesLT.Address A
	JOIN SalesLT.SalesOrderHeader SOH ON A.AddressID = SOH.BillToAddressID
		JOIN SalesLT.SalesOrderDetail SOD ON SOH.SalesOrderID = SOD.SalesOrderID
			JOIN SalesLT.Product P ON SOD.ProductID = P.ProductID
				JOIN SalesLT.ProductCategory PC ON P.ProductCategoryID = PC.ProductCategoryID
Group by A.City, PC.Name
Order by Total DESC

--2 
Select Name, SUM(SOD.OrderQty) AS Total From SalesLT.Product P
	JOIN SalesLT.SalesOrderDetail SOD ON P.ProductID = SOD.ProductID 
Group by Name
Order by Total DESC

--3
Select TOP 1 SOD.ProductID, Name, SUM((OrderQty*UnitPrice)) as Soma From SalesLT.SalesOrderDetail SOD
	JOIN SalesLT.Product P ON SOD.ProductID = P.ProductID
Group by SOD.ProductID, Name
Order by Soma DESC

--ex.79

USE Vendas
Select PM.Name, P.Name, P.Color From SalesLT.ProductModel PM
	
Select PM.Name From SalesLT.ProductModel PM, SalesLT.Product P1 
Where PM.ProductModelID = P1.ProductModelID And P1.Color = 'Blue'
UNION
Select PM.Name From SalesLT.ProductModel PM, SalesLT.Product P2 
Where PM.ProductModelID = P2.ProductModelID And P2.Color = 'Silver'

--80
USE Exames
Select * From ExamesSalas ES
	JOIN Exames E ON ES.IDExame = E.IDExame
Where ES.IDSala= 17 AND E.IDEpoca = 1
INTERSECT
Select * From ExamesSalas ES
	JOIN Exames E ON ES.IDExame = E.IDExame
		Where E.Hora = '13:30'

