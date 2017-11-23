USE Prodados

Select * From Employees
--
Select E1.EmployeeID, E1.LastName, E1.firstName, E1.ReportsTo,
	(Select E2.FirstName + ' ' + E2.LastName 
	From Employees as E2 
	Where E1.ReportsTo = E2.EmployeeID) as 'Nome do Chefe'
	From Employees AS E1
--
Select EmployeeID, LastName, FirstName 
From Employees
Where EmployeeID IN (Select ReportsTo From Employees)
--
USE Vendas
Select * From SalesLT.ProductCategory 
Select P1.Name, (select p2.Name from salesLT.ProductCategory as P2 
Where p1.ParentProductCategoryID = P2.ProductCategoryID) 
From SalesLT.ProductCategory as P1
--
USE Exames
Select * From Cursos, CursosDisciplinas
where Cursos.IDCurso = CursosDisciplinas.IDCurso
--ex.32
USE Exames
Select Curso, Disciplina From Cursos, CursosDisciplinas, Disciplinas
Where Cursos.IDCurso = 9
AND Cursos.IDCurso = CursosDisciplinas.IDCurso
AND CursosDisciplinas.IDDisciplina = Disciplinas.IDDisciplina

--ex.33
USE Vendas
Select PM.ProductModelID, PM.Name,
	   P.ProductNumber, P.Name
From SalesLT.ProductModel PM, SalesLT.Product P     --usar ALIAS com PM e P para representar, basta depois só chamar o PM. e P.
Where PM.ProductModelID = P.ProductModelID
AND PM.ProductModelID = 7
















