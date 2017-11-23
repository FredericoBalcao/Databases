-- T-SQL

-- 5.1 Variáveis

DECLARE @A int, @A1 nvarchar(25)
Select @A, @A1

SET @A = 1
SET @A1 = 'valor'

Select @A, @A1
--
USE ProDados
Select * from Customers

Declare @TempID nvarchar(10), @CompanyName nvarchar(50)
Set @TempID = 'HILAA'

Select @CompanyName =CompanyName From Customers 
	Where CustomerID = @TempID

Print @CompanyName
--
Print @@ServerName
Print @@version
Print @@Language
SET Language Portuguese
Print @@Language
--
Create Table #ProductTemp (ProductID int primary key)

Select * From #ProductTemp

Insert into #ProductTemp Values (1)
Insert into #ProductTemp Values (2)
Insert into #ProductTemp Values (3)

--
Declare @TabelaBackup TABLE (PK int primary key, Campo1 int not null)
Insert into @TabelaBackup Values (1,100)
Insert into @TabelaBackup Values (2,14500)
Select * From @TabelaBackup
--

Declare @A INT
SET @A = 45654
PRINT @A
PRINT N'valor de A: ' + cast(@A as nchar(10))
PRINT N'valor de A: ' + convert(nchar(10), @A)

--
Declare @A int, @B int
SET @A = 1
SET @B = 10
	While @A<=@B
		BEGIN
			Print 'A --> ' + cast(@A as nchar(19))
			SET @A = @A+1
		END

--
Declare @RelatorioDiario AS Table 
	(ID int identity (1,1) primary key,
	 Data smalldatetime,
	 TotalVendas bigint)

Declare @DataInicio datetime, @DataLimite datetime
SET @DataInicio = '1-1-2016'
SET @DataLimite = @DataInicio + 365
	While @DataInicio <=@DataLimite
		BEGIN
			INSERT INTO @RelatorioDiario (Data) Values (@DataInicio)
			SET @DataInicio = @Datainicio +1
		END
Select * From @RelatorioDiario

-- 5.3 Procedimentos
USE Prodados

Create Proc sp_NomeCompleto as
		Select TitleOfCourtesy + ' ' +FirstName+ ' ' +LastName From Employees

EXEC sp_NomeCompleto
EXEC sp_HelpText sp_NomeCompleto
EXEC sp_HelpText salesbycategory

--
ALTER Proc sp_NomeCompleto @Cidade nchar(30), @Pais nchar(30) as
		Select TitleOfCourtesy + ' ' +FirstName+ ' ' +LastName 'Nome Completo'
		From Employees
		Where City = @Cidade and Country =@Pais

EXEC sp_NomeCompleto London, UK
--
ALTER Proc sp_NomeCompleto @Cidade nchar(30), @Pais nchar(30)='UK' 
	WITH Encryption as
		Select TitleOfCourtesy + ' ' +FirstName+ ' ' +LastName 'Nome Completo'
		From Employees
		Where City = @Cidade and Country =@Pais

EXEC sp_NomeCompleto Seattle, USA

EXEC sp_helpText sp_NomeCompleto

-

Create Proc sp_NomeCompletoIndividual @ID int as
		Select TitleOfCourtesy + ' ' +FirstName+ ' ' +LastName 'Nome Completo'
		From Employees
		Where EmployeeID = @ID


Exec sp_NomeCompletoIndividual 3

-----------------------------------------------------------
USE ProDados

Create Proc Teste_OUTPUT @V1 int, @V2 int OUTPUT AS
	PRINT @V1
	PRINT @V2
	SET @V2 = @V1*@V2	

Declare @A int
Set @A = 6
EXEC Teste_OUTPUT 56,@V2=@A OUTPUT
PRINT @A

--------------------
Create Proc Teste_RETURN (@V1 int, @V2 int) AS
	PRINT @V1
	PRINT @V2
	SET @V2 = @V1*@V2
	RETURN @V2

Declare @A int
EXEC @A = Teste_RETURN 3,67

----- EXEMPLO 26

Create Proc pr_GetProductName (@ProductID nchar(10), @ProductName nchar(25) OUTPUT)
AS
	PRINT @ProductID
	Select @ProductName = @ProductName From Products Where ProductID = @ProductID

Declare @ProdName nchar(25)
EXEC pr_GetProductName  '5',@ProdName OUTPUT
PRINT @ProdName

-------
Create Proc pr_GetProductName1 (@ProductID nchar(10), @ProductName nchar(25))
AS
	PRINT @ProductID
	Select @ProductName = ProductName From Products Where ProductID = @ProductID
	RETURN @ProductName

Declare @ProdName nchar(25)
Exec @ProdName = pr_GetProductName1 '3'
PRINT @ProdName
---alteração feita

Alter Proc pr_GetProductName1 (@ProductID nvarchar(10))
AS
	PRINT @ProductID
	Declare @ProductName nvarchar(50)
	Select @ProductName = ProductName From Products Where ProductID = @ProductID
	RETURN @ProductName

Declare @ProdName nvarchar(50)
Exec @ProdName = pr_GetProductName1 '3'
PRINT @ProdName

------- EXEMPLO 30

Alter PROC pr_CompararProdutos (@P1 int, @P2 int)
AS
	--verifica primeiro se existe na tabela
	--para @P1
	IF EXISTS (Select ProductID From Products Where ProductID = @P1)
		PRINT 'PRODUTO 1: ' +Convert(nchar(2), @P1) + ' Existe'
	ELSE 
		PRINT 'PRODUTO 1: ' +Convert(nchar(2), @P1) + ' Não Existe'
	--para @P2
	IF EXISTS (Select ProductID From Products Where ProductID = @P2)
		PRINT 'PRODUTO 2: ' +Convert(nchar(2), @P2) + ' Existe'
	ELSE 
		PRINT 'PRODUTO 2: ' +Convert(nchar(2), @P2) + ' Não Existe'

	PRINT ' ' 
	Select P.ProductName, Sum(Quantity) AS 'Quantidade Vendida',
	Sum(OD.UnitPrice*Quantity) as 'Montante Total'
	From Products P JOIN [Order Details] OD ON P.ProductID = OD.ProductID
	Where P.ProductID = @P1 or P.ProductID = @P2
	Group by ProductName

EXEC pr_CompararProdutos 10, 99

--------- EXEMPLO 31

Alter Proc pr_TopClientes (@P int, @Rank int)  --P é o Produto 
AS
	Declare @Nome nvarchar(50)
	Declare @Total decimal(6,2)
	SET @Nome = (Select ProductName From Products Where ProductID = @P)
	PRINT 'Producto - ' + @Nome
	SET @Total = (Select Sum(Quantity) From [Order Details] Where ProductID = @P)
	PRINT 'Quantidade Total Vendida - ' +convert(nvarchar(10),@Total)
	PRINT ' '

	Select TOP (@Rank) C.CompanyName, C.Country, 
	SUM(Quantity) 'Quantidade Total', 
	SUM (Quantity)/@Total '%'
	From Customers C
		JOIN Orders O ON C.CustomerID = O.CustomerID
		JOIN [Order Details] OD ON O.OrderID = OD.OrderID 
	Where OD.ProductID  = @P
	Group by C.CompanyName, C.Country
	Order by [Quantidade Total] DESC

Exec pr_TopClientes 2, 4

--------------------------------------------------------------------------------------------------
-- 5.4 - TRIGGERS

USE ProDados

Go
Create Trigger tr_Eventos ON Products AFTER Insert, Update, Delete
AS
	Print ' Registo ????'
Go

Select * From Products
Insert Into Products (ProductName,SupplierID,CategoryID)
	Values ('Produto Nacional',10,1)
Update Products SET ProductName = 'Bacalhau Nacional' Where ProductID = 78
Delete From Products Where ProductID = 78 

------------------------------------------------------
Go
Alter Trigger tr_Eventos ON Products AFTER Insert, Update, Delete
AS
	Declare @ID varchar(50), @nomeAntigo varchar(50), @nomeAtual varchar(50)
	IF(Select ProductID From inserted) !='' and (Select ProductID From deleted) !=''
		BEGIN
			Print 'UPDATE ---------------------------------------------------------'
			SET @ID = (Select ProductID From inserted)
			SET @nomeAntigo = (Select ProductName From deleted)
			SET @nomeAtual = (Select ProductName From inserted)
			Print 'ID do Produto Alterado: ' +@ID
			Print 'ProductName Antigo: ' +@nomeAntigo
			Print 'ProductName Atual: ' +@nomeAtual
		END
	ELSE 
		BEGIN
			IF (Select ProductID From inserted) !=''
				BEGIN
					Print 'INSERT -------------------------------------------------'
					SET @ID = (Select ProductID From inserted)
					Print 'ID do novo produto: ' +@ID
				END
			ELSE 
				BEGIN 
					Print 'DELETE -------------------------------------------------'
					SET @ID = (Select ProductID From deleted)
					Print 'ID do produto eliminado: ' +@ID
				END
		END
Go

Select * From Products
Insert Into Products (ProductName,SupplierID,CategoryID) Values ('Produto Nacional',10,1)
Update Products SET ProductName = 'Bacalhau Nacional' Where ProductID = 84
Delete From Products Where ProductID = 84	

---------------------------------------------------------
Create Table Auditoria(
IDRegisto int identity (0,1) not null Primary Key,
Data datetime not null default getdate(),
Utilizador nchar(30) not null default suser_sname(), --sabe qual o utilizador que está logado
EstaçãoTrabalho nchar(30) not null default host_name(),  --sabe qual o nome da estação do utilizador
IDProduto int not null,
PreçoUnitárioNovo money not null,
PreçoUnitárioAntigo money not null
);

Select * From Auditoria

Go
Create Trigger AuditarPreçoProduto ON Products AFTER UPDATE
AS
	IF UPDATE (UnitPrice)
	BEGIN
		Print ' '
		Print 'Preço Unitário Alterado---------------------------------------'
		Declare @ID int, @PreçoNovo money, @PreçoAntigo money
		SET @ID = (Select ProductID From inserted)
		SET @PreçoNovo = (Select UnitPrice From inserted)
		SET @PreçoAntigo = (Select UnitPrice From deleted)
		Insert into Auditoria (IDProduto,PreçoUnitárioNovo,PreçoUnitárioAntigo)
		Values(@ID, @PreçoNovo, @PreçoAntigo)
	END
Go

Select * From Products
Insert Into Products (ProductName,SupplierID,CategoryID, UnitPrice) 
Values ('Produto Nacional',10,1,25)

Update Products SET UnitPrice = 55 Where  ProductID = 85

Delete From Products Where ProductID = 84	

------------------------

Go
Alter Trigger AuditarPreçoProduto ON Products AFTER UPDATE
AS
	IF UPDATE (UnitPrice)
	BEGIN
		Print ' '
		Print 'Preço Unitário Alterado---------------------------------------'
		Declare @ID int, @PreçoNovo money, @PreçoAntigo money
		SET @ID = (Select ProductID From inserted)
		SET @PreçoNovo = (Select UnitPrice From inserted)
		SET @PreçoAntigo = (Select UnitPrice From deleted)
		Insert into Auditoria (IDProduto,PreçoUnitárioNovo,PreçoUnitárioAntigo)
		Values(@ID, @PreçoNovo, @PreçoAntigo)
	END
Go


Select * From Products
Insert Into Products (ProductName,SupplierID,CategoryID, UnitPrice) 
Values ('Produto Nacional',10,1,25)

Update Products SET UnitPrice = 55 Where  ProductID = 65

Delete From Products Where ProductID = 84

Select * From Auditoria

-------------------------------------------------------------------------------------
--Exemplo 37

USE ProDados

Select * From Employees

Go
Create Trigger tr_Employees_LastName ON Employees AFTER UPDATE
AS
	IF UPDATE (LastName)
		BEGIN
			Print 'Não pode alterar este campo!'
			Rollback Tran
			Return
		END
Go

UPDATE Employees SET LastName = 'KINGS' Where EmployeeID = 7

------------------------------------------------------------------------------------
--Exemplo 38

Create Table Tabela_Exemplo38(
ID int identity(1,1) not null Primary Key,
Custo money not null,
IVA decimal(18,2) not null,
Total as (Custo + (Custo*IVA))
);

Insert Into Tabela_Exemplo38 (Custo,IVA) Values(125,0.21)
Select * From Tabela_Exemplo38

Go
Create View View_Tabela_Exemplo38 AS 
	Select ID,Custo,IVA,Total From Tabela_Exemplo38
Go

Select * From View_Tabela_Exemplo38

Insert Into View_Tabela_Exemplo38(Custo,IVA) Values(125,0.21)

Go
Create Trigger TR_1 ON View_Tabela_Exemplo38 INSTEAD OF INSERT
AS
	BEGIN
		Insert Into Tabela_Exemplo38(Custo,IVA) 
		Select Custo, IVA From inserted
	END
Go

Insert Into View_Tabela_Exemplo38(Custo,IVA) Values(155,0.22)
Select * From Tabela_Exemplo38

----------------------------------------------------------------------------------------
--Exemplo 40

Select * From [Order Details]

Go
Create Trigger tr_ObterPreçoUnitário ON [Order Details] AFTER INSERT, UPDATE 
AS
	BEGIN
		Print 'Obter Preço Unitário'
		UPDATE [Order Details] 
		SET UnitPrice = (Select UnitPrice From Products 
						 Where ProductID = [Order Details].ProductID)
						 From [Order Details] JOIN inserted 
						 ON [Order Details].ProductID = inserted.ProductID
	END
Go

Insert into [Order Details](OrderID,ProductID,Quantity) Values (11077,1,5)

Select * From Products

UPDATE [Order Details] SET ProductID = 33 Where OrderID = 11077 and ProductID = 1

----------------------------------------------------------------------------------------
--Exemplo 41

--criar tabela Customers_DELETE
CREATE TABLE [dbo].[Customers_DELETE](
	[CustomerID] [nchar](5) NOT NULL PRIMARY KEY,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
);

Go
Create Trigger tr_Customers_INSTEADOF_Delete ON Customers
Instead Of Delete
AS
	BEGIN
	Declare @CustomerID nchar(5)
	SET @CustomerID = (Select CustomerID From deleted)
		IF EXISTS (Select * From Orders Where CustomerID = @CustomerID)
			BEGIN
				Print 'Este registo não pode ser eliminado'
				Print @CustomerID
				Rollback 
			END
		ELSE
			BEGIN 
				Print 'Registo Eliminado'
				Print @CustomerID
				Insert into Customers_DELETE Select * From deleted
				Delete From Customers Where CustomerID = @CustomerID
				Rollback 
			END
	END
Go

Select * From Customers Where NOT EXISTS(
Select * From Orders Where Customers.CustomerID = Orders.CustomerID)

Delete From Customers Where CustomerID = 'FISSA'
Delete From Customers Where CustomerID = 'BOLID'

Go
Alter Trigger tr_Customers_INSTEADOF_Delete ON Customers
Instead Of Delete
AS
	BEGIN
	Declare @CustomerID nchar(5)
	SET @CustomerID = (Select CustomerID From deleted)
		IF EXISTS (Select * From Orders Where CustomerID = @CustomerID)
			BEGIN
				Print 'Este registo não pode ser eliminado'
				Print @CustomerID
				Rollback 
			END
		ELSE
			BEGIN 
				Print 'Registo Eliminado'
				Print @CustomerID
				Insert into Customers_DELETE Select * From deleted
				Delete From Customers Where CustomerID = @CustomerID
			END
	END
Go

Select * From Customers_DELETE

Go
Create Proc pr_RecuperarCustomer_DELETED @CustomerID nchar(5) 
AS
	BEGIN
		INSERT INTO Customers Select * From Customers_DELETE
		Where CustomerID = @CustomerID
		Print 'O registo ' +@CustomerID + ' foi recuperado'
		Delete From Customers_DELETE Where CustomerID = @CustomerID
	END
Go

EXEC pr_RecuperarCustomer_DELETED 'FISSA'

-------------------------------------------------------------------------------------------------
USE ProDados

Select * From Products 

Alter Table Products ADD IsDeleted nchar(1) not null default (0)

Go
Alter Trigger tr_Produtos_INSTEADOF_DELETE ON Products
	INSTEAD OF Delete As 
	Declare @IsDeleted nchar(1)
	SET @IsDeleted = (Select IsDeleted From deleted)
	IF @IsDeleted = 0
		BEGIN
			PRINT 'Este registo não pode ser eliminado |'
			PRINT @IsDeleted
			Rollback 
		END
	ELSE 
		BEGIN
		PRINT 'Este registo vai ser eliminado |'
		PRINT @IsDeleted
		Rollback
		END
Go

Delete From Products Where ProductID = 3
Update Products Set IsDeleted = 1 Where ProductID = 3

---------------------------------------------------------------------
--TRIGGER CASO PRATICO

USE ProDados

Drop Table Utilizadores
Create Table Utilizadores(
ID int IDENTITY(1,1) not null Primary Key,
NomeUtilizador nchar(20),
PalavraPasse Varbinary(128) -- a chave tem que ser um varbinary porque é sempre binária
);

--criar chave simétrica para encriptar a palavra-passe
Create Symmetric Key CKEY With Algorithm = Triple_DES
Encryption by Password = 'ntQy12Rs';

--desencriptar a palavra-passe
Open Symmetric Key CKEY Decryption by Password = 'ntQy12Rs';

--inserir palavra-passe encriptada 
Insert Utilizadores Values('joao',ENCRYPTBYKEY(KEY_GUID('CKEY'),'vivaobenfica'));

Select * From Utilizadores

--desencriptar a palavra-passe
Select ID, NomeUtilizador, 
	CONVERT (varchar(20),DecryptbyKey(PalavraPasse)) as PalavraPasse
	From Utilizadores

--Fechar a chave
Close Symmetric Key CKEY