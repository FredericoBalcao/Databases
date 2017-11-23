USE Vendas

--1
-- a)
Select C.SalesPerson, SOH.TotalDue, SOH.TotalDue/100 as PercentagemVendas 
From SalesLT.Customer C
JOIN SalesLT.SalesOrderHeader SOH ON C.CustomerID = SOH.CustomerID
Order by PercentagemVendas

--b)
Select P.Name, ProductNumber as 'SO/LJ', SOD.OrderQty 
From SalesLT.Product P
JOIN SalesLT.SalesOrderDetail SOD ON SOD.ProductID = P.ProductID
Where ProductNumber LIKE 'SO%' OR ProductNumber LIKE 'LJ%'

------------
--2

Create Database db_Teste1

USE db_Teste1

Create Table Funcionarios(
NFuncionario int NOT NULL IDENTITY(1000,1),
PrimeirosNomes nchar(20) NOT NULL,
UltimosNomes nchar(20) NOT NULL,
CategoriaProfissional nchar(25) NOT NULL,
NIF nchar(9) NOT NULL UNIQUE,
VencimentoBase smallmoney,
CONSTRAINT PK_NumeroFuncionario Primary Key (NFuncionario),
CONSTRAINT CK_NIF Check (NIF LIKE '[1-9][1-9][1-9][1-9][1-9][1-9][1-9][1-9][1-9]')
);

Create Table Vencimentos(
NFuncionario int NOT NULL,
M�s nchar(2) NOT NULL,
Ano nchar(4) NOT NULL,
VencimentoBase smallmoney,
SubsidioAlimenta��o smallmoney,
IRS smallmoney,
ADSE smallmoney,
CGA smallmoney,
VencimentoLiquido AS ((VencimentoBase-(IRS+ADSE+CGA)) + SubsidioAlimenta��o)
CONSTRAINT PK_Vencimentos Primary Key (NFuncionario,M�s,Ano),
CONSTRAINT FK_Funcionarios Foreign Key (NFuncionario) REFERENCES Funcionarios (NFuncionario),
CONSTRAINT CK_Ano Check (Ano LIKE '[1-9][0-9][0-9][0-9]'),
);

Select * From Funcionarios
Select * From Vencimentos

--3

INSERT INTO Funcionarios (PrimeirosNomes,UltimosNomes,CategoriaProfissional,NIF,VencimentoBase)
VALUES('Jo�o','Costa','T�cnico Superior',152789415,2500)

INSERT INTO Funcionarios (PrimeirosNomes,UltimosNomes,CategoriaProfissional,NIF,VencimentoBase)
VALUES('Pedro','Silva','T�cnico Superior',211748852,2560)

INSERT INTO Funcionarios (PrimeirosNomes,UltimosNomes,CategoriaProfissional,NIF,VencimentoBase)
VALUES('Maria','Lopes','Administrador',215462357,3200)

INSERT INTO Vencimentos(NFuncionario,M�s,Ano)
VALUES(1000,01,2016)
INSERT INTO Vencimentos(NFuncionario,M�s,Ano)
VALUES(1000,12,2015)
INSERT INTO Vencimentos(NFuncionario,M�s,Ano)
VALUES(1001,01,2016)
INSERT INTO Vencimentos(NFuncionario,M�s,Ano)
VALUES(1001,12,2015)
INSERT INTO Vencimentos(NFuncionario,M�s,Ano)
VALUES(1002,01,2016)
INSERT INTO Vencimentos(NFuncionario,M�s,Ano)
VALUES(1002,12,2015)


--4
UPDATE Vencimentos SET VencimentoBase = F.VencimentoBase From Funcionarios F
UPDATE Vencimentos SET SubsidioAlimenta��o = 55 Where (M�s = 12 and Ano = 2015) 
UPDATE Vencimentos SET SubsidioAlimenta��o = 57 Where (M�s = 01 and Ano = 2016) 		
UPDATE Vencimentos SET IRS = VencimentoBase*0.35
UPDATE Vencimentos SET ADSE = VencimentoBase*0.05
UPDATE Vencimentos SET CGA = VencimentoBase*0.125

--5
--a)
ALTER TABLE Funcionarios SET NFuncionario = NFuncionario smallint NOT NULL

--b)
ALTER TABLE Vencimentos ADD IDVencimento int identity(1,1) Primary Key (IDVencimento)

--verificar se est� como chave prim�ria
EXEC sp_help Vencimentos





