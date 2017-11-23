Set Language Portuguese

USE Vendas
--58
Select SalesOrderNumber
,Left(SalesOrderNumber,3) 'Apanha a parte Esquerda'
,Right(SalesOrderNumber, 5) 'Apanha a parte Direita'
,SUBSTRING(SalesOrderNumber, 3, 2)'Substring'
,Reverse(SalesOrderNumber)'Reverso'
,Lower(Left(SalesOrderNumber, 2))'Minúsculas'
,Replace(SalesOrderNumber, 'S','X')'Substituição 1 caracter'
,Replicate(SalesOrderNumber,3)'Duplica a string'
,STUFF(SalesOrderNumber, 3,3,'HH') 
,PATINDEX('%1%',SalesOrderNumber)
From SalesLT.SalesOrderHeader

--59
Select EmailAddress, Patindex('%@%',EmailAddress)-1 'Nr.Caracteres antes do @'
From SalesLT.Customer

Select EmailAddress, left(EmailAddress, Patindex('%@%',EmailAddress)-1) 'Nome do utilizador/caixa'
From SalesLT.Customer

Select EmailAddress, right(EmailAddress, len(EmailAddress)-Patindex('%@%',EmailAddress)) 'endereço do servidor'
From SalesLT.Customer

--60
Select '     Texto com espaços' as Texto, Len('     Texto com espaços')
Select ltrim('     Texto com espaços') as Texto, Len(ltrim('     Texto com espaços'))

--Group By
--61
USE Exames
Select Área, Count(*) 'Quantidade'
From Docentes
Group by Área

--62
Select IDCurso, Count(IDDisciplina) 'Nr.Disciplinas' 
From CursosDisciplinas
Group by IDCurso

Select Curso, Count(IDDisciplina) 
From Cursos, CursosDisciplinas
Where Cursos.IDCurso = CursosDisciplinas.IDCurso
Group by Curso

--63
USE Vendas
Select PM.Name, Count(*) 'Nr.Produtos' From SalesLT.Product P, SalesLT.ProductModel PM
Where PM.ProductModelID = P.ProductModelID
Group by PM.Name
Order by PM.Name

--64
USE Vendas
Select PC.Name, count(*) From SalesLT.Product P, SalesLT.ProductCategory PC
Where P.ProductCategoryID = PC.ProductCategoryID
Group by PC.Name

--Quantos clientes existe por cidade?
Select City, count(*) as A From SalesLT.Address
Group by City
Order by A desc

--65
Select P1.ParentProductCategoryID, (Select P2.Name 
									From SalesLT.ProductCategory as P2 
									Where P2.ProductCategoryID = P1.ParentProductCategoryID), 
Count(P1.ParentProductCategoryID) as 'Contagem' From SalesLT.ProductCategory as P1
Group by P1.ParentProductCategoryID


--HAVING
--Quais as cidades com mais de 15 clientes?
Select City, count(*) as A From SalesLT.Address
Group by City
Having Count(*) > 10
Order by A desc

--66
USE Exames
Select Curso, Count(IDDisciplina)
From Cursos C, CursosDisciplinas CD
Where C.IDCurso = CD.IDCurso
Group by Curso
Having Count(IDDisciplina) > 30

--Select...Case
--68
USE Vendas
Select ProductID, Name, Size =
		CASE Size
			When 'S' Then 'Pequeno'
			When 'M' Then 'Médio'
			When 'L' Then 'Grande'
			When 'XL' Then 'Muito Grande'
			ELSE Size --caso nao seja uma letra
		END
 From SalesLT.Product

