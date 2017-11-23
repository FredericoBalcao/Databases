--Exercicios com base na sebenta no DML 4)
USE Exames --usar dbExames

Select *From Cursos --seleciona a tudo da tabela Cursos*/
Select Curso From Cursos --seleciona o campo Curso da tabela Cursos

--
USE Vendas --usar dbVendas
Select Name From SalesLT.Product --seleciona o campo nome da tabela Product da subcategoria SalesLT
--
USE Exames 
Select Curso, Sigla From Cursos --seleciona dois campos(Curso e Sigla) da tabela Cursos
--
USE Vendas
Select * From SalesLT.Product --seleciona tudo da tabela Product de SalesLT
--
USE Vendas
Select FirstName, LastName, CompanyName From SalesLT.Customer --seleciona 1 e ultimo nome e o nome da companhia da tabela Customer de SalesLT
--
--usar o distinct
Select Distinct CompanyName From SalesLT.Customer --verifica se o campo CompanyName tem mais que uma pessoa, ou se duas pessoas pertencem a uma só empresa,
--neste caso se fizermos  Select CompanyName From SalesLT.Customer aparecem 440 linhas, se for com Distinct aparecem 439 significa que existem duas pessoas a pertencer a 1 empresa
--
Use Exames
Select IDCurso From Cursos
Select IDCurso From CursosDisciplinas
Select Distinct IDCurso From CursosDisciplinas
--
Select Distinct Disciplina From Disciplinas
--
Select * From CursosDisciplinas 
Where IDCurso = 2
--
USE Vendas
Select * From SalesLT.SalesOrderHeader
Where CustomerID = 61
--
USE Exames
Select * From ExamesSalas Where IDSala = 26
--
USE Vendas
Select * From SalesLT.SalesOrderHeader
Where TotalDue > 50000
--
Select * From SalesLT.SalesOrderHeader
Where TotalDue < 50000
--
Select * From SalesLT.Product
Where StandardCost >= 1550
--
Select * From SalesLT.Product
Where StandardCost <= 1550
--
USE Exames
Select * From Exames
Where Data >= '2005-07-01' and Data <= '2005-07-31' --procura só no mês de julho, usar sempre 'ano-mes-dia' para datas
--
Select * From EpocasExame
Select * From Exames
Where IDEpoca != 1
--
Select * From CursosDisciplinas
Where IDCurso = 2 and Tipo = '1ºSem' and Ano = 2
-
Select * From CursosDisciplinas
Where IDCurso = 2 and Tipo = '1ºSem' and (Ano = 2 or Ano = 1) --usa tambem o or entre parentes para mostrar os dois anos do curso 2 de 1ºsem
--
USE Vendas
Select * From SalesLT.Product
Where Color = 'Blue' and Size = 'M'
--
Select * From SalesLT.ProductCategory
Select * From SalesLT.Product
Where ProductCategoryID = 16 or ProductCategoryID = 18
--
USE Exames
Select * From Exames
Where NOT Exames.IDEpoca = 3   --mostra todos os exames que não sejam da 3 epoca
--
USE Exames
Select * From CursosDisciplinas
Where (IDCurso between 2 and 4) and Ano = 2 --entre o curso 2 e 4, e do ano 2
--
USE Vendas
Select * From SalesLT.SalesOrderHeader
Where (TotalDue between 1000 and 3000) --entre 1000 e 3000 (para intervalos grandes)
--
USE Vendas
Select * From SalesLT.ProductCategory
Where ParentProductCategoryID IN (1,2) --simplica se fosse ParentProductCategoryiD = 1 and ParentProductCategoryiD = 2 
--o IN mostra o que está dentro do intervalo entre 1 e 2 (para intervalos pequenos)
Select * From SalesLT.ProductCategory
Where ParentProductCategoryID NOT IN (1,2) --mostra o que não pertence a entre 1 e 2
--
Select * From SalesLT.Product
Where Color IS NULL and Size IS NULL --mostra a cor e tamanho que sejam NULL
--
Select * From SalesLT.Product
Where Color IS NOT NULL and Size IS NOT NULL --mostra o que a cor e tamanho não sejam NULL
--
USE Exames
Select * From Docentes
Where Nome Like 'M%' or Nome Like 'J%' --mostra todos os nomes com M e J, se fosse no fim era %M e %J
Order by Nome								  --ordenados pelo Nome
--
--SubConsulta
Select * From CursosDisciplinas
Where IDCurso = (Select IDCurso From Cursos 
				 Where Curso = 'Engenharia Informática')
--
USE Vendas
Select * From SalesLT.Product
Where ProductCategoryID = (Select ProductCategoryID From SalesLT.ProductCategory
							Where Name = 'Brakes')





















