--campos calculados
--ex.35
USE Vendas
Select CustomerID, SubTotal, SubTotal*0.05 as 'Desconto 5%', 
SubTotal-(SubTotal*0.05) 'Total a Pagar' 
From SalesLT.SalesOrderHeader	

--ex.36
USE Vendas
Select ProductID, ListPrice, ListPrice*1.0234 as '2% do Preço Unitario'  
From SalesLT.Product
Where ProductModelID = 22

--ex.37
USE Vendas
Select ProductID, Name, ListPrice, ListPrice/1.0723 as '€' 
From SalesLT.Product

--ordenação
--ex.40
USE Vendas
Select Name, ListPrice 
From SalesLT.Product
Order by Name DESC 

--funções agregação
--ex.45
USE Vendas
Select Count(*) 
From SalesLT.SalesOrderHeader
Where TotalDue < (Select AVG(TotalDue) 
				  From SalesLT.SalesOrderHeader)

--ex.46
--1
USE Vendas
Select MAX(OrderQty), MIN(OrderQty), AVG(OrderQty)   
From SalesLT.SalesOrderDetail

--4
USE Vendas
Select Count(*) 
From SalesLT.SalesOrderDetail
Where OrderQty < (Select AVG(OrderQty) 
				  From SalesLT.SalesOrderDetail)

--5
Select *
From SalesLT.SalesOrderHeader
Where TotalDue = (Select MAX(TotalDue) 
				  From SalesLT.SalesOrderHeader)

--6
USE Vendas
Select * From SalesLT.Customer
Where CustomerID = (Select CustomerID
					From SalesLT.SalesOrderHeader
					Where TotalDue = (Select MAX(TotalDue) 
									  From SalesLT.SalesOrderHeader))
--outra forma de fazer o codigo de cima:
Select * 
From SalesLT.Customer C, SalesLT.SalesOrderHeader S
Where C.CustomerID = S.CustomerID AND
	TotalDue = (Select MAX(TotalDue) From SalesLT.SalesOrderHeader)

--DATAS/HORAS
Select DATEPART(month, GETDATE()) as 'Numero do mes actual'
Select DATENAME(month,GETDATE()) as 'Nome do mes actual'
Select DATEPART(day,GETDATE()), DATEPART(month,GETDATE()), DATEPART(year,GETDATE())

--ex.51
USE Exames
Select Data, Year(Data) 'Ano', Month(Data)'Mês', Day(Data) 'Dia' 
From Exames
--52
USE Exames
Select Data, Day(Data) 'Dia', DatePart(dw, Data) 'Dia da Semana', DateName(dw,Data)'Dia' 
From Exames


--Diferença entre duas datas ou duas horas
--53
Select Datediff(Day, '01-01-2015', '12-31-2015') as 'NumeroDias'

--54
USE Vendas
Select OrderDate, ShipDate, Datediff(day, OrderDate, ShipDate) as 'Número de Dias' 
From SalesLT.SalesOrderHeader
--fazendo a média
Select avg(Datediff(day, OrderDate, ShipDate)) as 'Média do Número de Dias' 
From SalesLT.SalesOrderHeader

--55
USE Exames
Select Datediff(Day, Min(Data), Max(Data)) as 'Dias dos Exames' 
From Exames
Where IDEpoca = 1





