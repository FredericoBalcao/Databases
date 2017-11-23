USE Master

-- Create database MyDataBase
GO
USE MyDataBase

Create Table Clientes
(PrimeiroNome nchar(50),
 UltimoNome nchar(50),
 Endereço nchar(50),
 Cidade nchar(50),
 Pais nchar(25),
 DataNascimento DateTime)

Select * From Clientes

EXEC sp_help Clientes
--
DROP Table Clientes
--
Create Table Clientes
(PrimeiroNome nchar(50),
 UltimoNome nchar(50),
 Endereço nchar(50) default 'Unknown',
 Cidade nchar(50) default 'Lisboa',
 Pais nchar(25) default 'Portugal',
 DataNascimento DateTime)

 --
 DROP Table Clientes
 --

 Create Table Clientes
(PrimeiroNome nchar(50) NOT NULL,
 UltimoNome nchar(50) NOT NULL,
 Endereço nchar(50) default 'Unknown',
 Cidade nchar(50) default 'Lisboa',
 Pais nchar(25) default 'Portugal',
 DataNascimento DateTime)
 --
 Drop table Clientes
 --
 Create Table Clientes
(IDCliente Integer UNIQUE,
 PrimeiroNome nchar(50) NOT NULL,
 UltimoNome nchar(50) NOT NULL,
 Endereço nchar(50) default 'Unknown',
 Cidade nchar(50) default 'Lisboa',
 Pais nchar(25) default 'Portugal',
 DataNascimento DateTime)
 -- 
 Drop table Clientes
 --
  Create Table Clientes
(IDCliente Integer CHECK (IDCliente >0),
 PrimeiroNome nchar(50) NOT NULL,
 UltimoNome nchar(50) NOT NULL,
 Endereço nchar(50) default 'Unknown',
 CodigoPostal nchar(8) CHECK (CodigoPostal LIKE '[1-9][0-9][0-9][0-9][-][0-9][0-9][0-9]'),
 Cidade nchar(50) default 'Lisboa',
 Pais nchar(25) default 'Portugal',
 DataNascimento DateTime CHECK (Year(DataNascimento)>1950 and
								Year(DataNascimento)<Year(getdate())),
 Sexo nchar(1) NOT NULL CHECK (Sexo IN ('M','F'))
)
--
 Drop table Clientes
 --

 Create Table Clientes
(IDCliente Integer Primary Key,
 PrimeiroNome nchar(50) NOT NULL,
 UltimoNome nchar(50) NOT NULL,
 Endereço nchar(50) default 'Unknown',
 CodigoPostal nchar(8) CHECK (CodigoPostal LIKE '[1-9][0-9][0-9][0-9][-][0-9][0-9][0-9]'),
 Cidade nchar(50) default 'Lisboa',
 Pais nchar(25) default 'Portugal',
 DataNascimento DateTime CHECK (Year(DataNascimento)>1950 and
								Year(DataNascimento)<Year(getdate())),
 Sexo nchar(1) NOT NULL CHECK (Sexo IN ('M','F'))
)

--
 Drop table Clientes
 --

 Create Table Clientes
(IDCliente Integer,
 PrimeiroNome nchar(50) NOT NULL,
 UltimoNome nchar(50) NOT NULL,
 Endereço nchar(50) default 'Unknown',
 CodigoPostal nchar(8),
 Cidade nchar(50) default 'Lisboa',
 Pais nchar(25) default 'Portugal',
 DataNascimento DateTime CHECK (Year(DataNascimento)>1950 and
								Year(DataNascimento)<Year(getdate())),
 Sexo nchar(1) NOT NULL CHECK (Sexo IN ('M','F')),
 CONSTRAINT PK_Clientes Primary Key (IDCliente),
 CONSTRAINT CK_CodigoPostal CHECK (CodigoPostal LIKE '[1-9][0-9][0-9][0-9][-][0-9][0-9][0-9]')
)

EXEC sp_help Clientes

Create Table Vendas
(IDVenda Integer,
 DataVenda DateTime Default GetDate(),
 DataEntrega DateTime,
 IDCliente Integer,
 MétodoPagamento nchar(20) CHECK (MétodoPagamento IN (
							'Numerário','Cheque','VISA')),
 Status nchar(10) CHECK (Status IN ('Concluída','Retida')),
 CONSTRAINT PK_Vendas Primary Key (IDVenda),
 CONSTRAINT CK_DataEntrega CHECK (DataEntrega>=DataVenda),
 CONSTRAINT FK_Clientes FOREIGN KEY (IDCliente) REFERENCES 
						Clientes (IDCliente) on delete cascade on update cascade
)
--
Select * from Clientes
Select * From Vendas

--Tabela Categoria Produtos
Create Table CategoriasProduto
(IDCategoria smallint,
DesignaçãoCategoria nchar(60),
CONSTRAINT PK_IDCategoria Primary Key (IDCategoria)
)

--Tabela Fornecedores dos Produtos
Create Table FornecedoresProduto
(
NumeroFornecedor smallint,
NomeFornecedor nchar(70),
Endereço nchar(100),
CodigoPostal nchar(8),
Localidade nchar(50)
CONSTRAINT PK_NumeroFornecedor Primary Key(NumeroFornecedor)
)

--Tabela Produtos
Create Table Produtos
(
IDProduto int,
NomeProduto nchar(50),
PreçoUnitario money,
IDCategoria smallint,
NumeroFornecedor smallint,
CONSTRAINT PK_IDProduto Primary Key (IDProduto),
CONSTRAINT FK_IDCategoria Foreign Key (IDCategoria) 
						  REFERENCES CategoriasProduto (IDCategoria) ON UPDATE CASCADE,
CONSTRAINT FK_NomeFornecedor Foreign Key (NumeroFornecedor) 
						     REFERENCES FornecedoresProduto (NumeroFornecedor) ON UPDATE CASCADE
)

--Tabela Vendas Produtos
Create Table VendasProdutos
(
IDVenda int, 
IDProduto int,
PreçoUnitário smallmoney,
Quantidade smallint default 1 NOT NULL,
IVA decimal(18,2),
SubTotal AS ([PreçoUnitário]*[Quantidade])+([PreçoUnitário]*[Quantidade]*[IVA]),
CONSTRAINT PK_VendasProdutos Primary Key (IDVenda, IDProduto),
CONSTRAINT FK_IDVenda Foreign Key (IDVenda) 
					  REFERENCES Vendas (IDVenda) ON DELETE CASCADE,
CONSTRAINT FK_Produtos Foreign Key (IDProduto) 
					   REFERENCES Produtos (IDProduto) ON UPDATE CASCADE
)

-- INSERT INTO
INSERT INTO FornecedoresProduto Values(24,'CHIP7','Rua da Sé','2100-234','Lisboa')
INSERT INTO FornecedoresProduto Values(25,'HP Portugal','Av. de Portugal','2200-456','Lisboa')

Select * From FornecedoresProduto

INSERT INTO CategoriasProduto Values(101,'Computadores')
INSERT INTO CategoriasProduto Values(102,'Impressoras')
INSERT INTO CategoriasProduto Values(103,'Consumíveis')

Select * From CategoriasProduto

INSERT INTO Produtos Values(134,'Notebook HPnx7400',789,101,25)
INSERT INTO Produtos Values(135,'Impressora HP120',125,102,25)
INSERT INTO Produtos Values(136,'Rato USB Microsoft',15,103,24)

Select * From VendasProdutos
Select * From Produtos
Select * From Vendas


INSERT INTO VendasProdutos VALUES(1201,134,789,3,0.21)
INSERT INTO VendasProdutos VALUES(1201,135,125,3,0.21)
INSERT INTO VendasProdutos VALUES(1201,136,15,1,0.21)
INSERT INTO VendasProdutos VALUES(1202,136,15,22,0.21)
INSERT INTO VendasProdutos VALUES(1206,134,789,20,0.21)

Select * From Produtos
	JOIN VendasProdutos
		ON Produtos.IDProduto = VendasProdutos.IDProduto

-- ALTER TABLE
Select * From Clientes
--ex.1
ALTER TABLE Clientes ADD EstadoCivil nchar(20) Default ('Solteiro')
	Check (EstadoCivil IN ('Solteiro','Casado','Viúvo','Divorciado','União de Facto'))

--ex.2
-- apagar as constraint's (caso tenha) antes de apagar uma coluna de uma tabela
ALTER TABLE Clientes DROP CONSTRAINT DF__Clientes__Estado__2BFE89A6
ALTER TABLE Clientes DROP CONSTRAINT CK__Clientes__Estado__2CF2ADDF
ALTER TABLE Clientes DROP Column EstadoCivil

--ex.3
Exec sp_help Clientes
EXEC sp_rename 'Clientes.PrimeiroNome','PrimeirosNomes','COLUMN'

--ex.4
Alter Table Clientes Alter Column Endereço nchar(255)

Alter Table FornecedoresProduto ADD Telefone nchar(10) --adiciona coluna telefone
Alter Table FornecedoresProduto ADD eMail nchar(50) --adiciona coluna eMail
Alter Table FornecedoresProduto DROP Column eMail --remove coluna eMail
Select * From FornecedoresProduto

--
Alter Table VendasProdutos ADD Desconto Decimal (18,2) Default (0.01) --1% desconto
UPDATE VendasProdutos SET Desconto = 0.01 --actualizar o desconto na tabela VendasProdutos
Alter Table VendasProdutos ADD ValorDesconto AS 
(([PreçoUnitário]*[Quantidade])+([PreçoUnitário]*[Quantidade]*[IVA]))*Desconto --SubTotal*Desconto
Select * From VendasProdutos

--
Alter Table VendasProdutos ADD CONSTRAINT CK_Quantidade
		Check (Quantidade >= 1 and Quantidade <= 100)
EXEC sp_help VendasProdutos
--

Alter Table VendasProdutos ADD IDRegisto int Identity(1,1) --adicionar coluna IDRegisto como identity
Alter Table VendasProdutos DROP CONSTRAINT PK_VendasProdutos --retirar constraint das outras chaves primárias
Alter Table VendasProdutos ADD CONSTRAINT PK_VendasProdutos Primary Key (IDRegisto) -- colocar IDRegisto como nova chave primária
Select * From VendasProdutos

--
--INSERT INTO

USE MyDataBase
INSERT INTO FornecedoresProduto VALUES(26,'ABC Link','Rua dos Franciscanos, 23, RC','4700-099','Braga','279500600')
INSERT INTO FornecedoresProduto VALUES(27,'Só Hardware','Av dos Álamos, 2001, 8ºD','3800-352','Aveiro','265400850')
--
INSERT INTO Produtos(IDProduto, NomeProduto, PreçoUnitario, IDCategoria, NumeroFornecedor) 
VALUES(137,'Notebook DELL',899,101,24)
Select * From Produtos
--
INSERT INTO Produtos(NomeProduto,IDProduto, IDCategoria, NumeroFornecedor, PreçoUnitario) 
VALUES('Notebook ASUS',138,101,24,1250)
--

Create Table BackupVendas
(
IDVenda int ,
DataVenda datetime,
IDCliente int references Clientes (IDCliente),
TotalVenda money
)

TRUNCATE Table BackupVendas --apaga valores da tabela 

INSERT INTO BackupVendas
Select V.IDVenda,DataVenda,IDCliente,Sum(SubTotal) as 'TotalVenda' From Vendas V 
	JOIN VendasProdutos VP ON V.IDVenda = VP.IDVenda
Group by V.IDVenda,DataVenda,IDCliente

Select * From BackupVendas

--
--UPDATE

Alter Table Clientes ADD CategoriaCliente nchar(2)
	Check (CategoriaCliente IN ('I','EP','IP'))
UPDATE Clientes SET CategoriaCliente = 'I'
Select * From Clientes
----
UPDATE Produtos SET PreçoUnitario = PreçoUnitario + (PreçoUnitario*0.0123) --aumento de 1,23% no preço unitario
Select * From Produtos
-----
UPDATE Clientes SET EstadoCivil = 'Solteiro' 
Where IDCliente = 5
Select * from Clientes
-----

Create Table RelatorioVendas
(
Ano int UNIQUE,
TotalVendas bigint
)
Select * From RelatorioVendas

INSERT INTO RelatorioVendas VALUES(2008,0)
INSERT INTO RelatorioVendas VALUES(2009,0)
INSERT INTO RelatorioVendas VALUES(2010,0)

Truncate Table RelatorioVendas

UPDATE RelatorioVendas SET TotalVendas  = (
	Select sum(SubTotal) From Vendas V JOIN VendasProdutos VP ON V.IDVenda = VP.IDVenda
	Group by year(DataVenda)
	) Where Ano = 2008
-----
Select * From Vendas

UPDATE Vendas SET DataVenda = REPLACE(DataVenda,year(DataVenda),'2007')
----
Select * From Clientes
UPDATE Clientes SET Endereço = 'Actualizar na proxima venda!'
	Where Endereço = 'Desconhecida'
-----
Select * From Clientes
UPDATE Clientes SET UltimoNome = 'Rochas' Where IDCliente = 10
----
UPDATE Clientes SET IDCliente = 80 Where IDCliente = 8
----
ALTER Table BackupVendas DROP CONSTRAINT FK__BackupVen__IDCli__3E1D39E1
----
INSERT INTO FornecedoresProduto 
VALUES(99,'Linksys','Av.dos Bombeiros','2100-547','Lisboa','215478741')
Select * From FornecedoresProduto
Select * From Produtos

UPDATE Produtos SET NumeroFornecedor = 99 
Where NumeroFornecedor = 24 
-----

UPDATE Clientes SET Endereço = 'Vale do Paraíso n.56', CodigoPostal = '7300-120'
Where IDCliente = 7
Select * From Clientes
-----

Select * From Produtos

UPDATE Produtos SET IDProduto = 139 
Where IDProduto = 134

-----

Select DesignaçãoCategoria, sum(Quantidade) as 'TotalUnidadesVendidas' From CategoriasProduto CP 
	JOIN Produtos P ON CP.IDCategoria = P.IDCategoria
	JOIN VendasProdutos VP ON P.IDProduto = VP.IDProduto
Group by DesignaçãoCategoria


-------
USE MyDataBase

--criar view
Go
Create View ListagemProdutosCategoria AS
	Select C.DesignaçãoCategoria, count(IDProduto) as 'Total' From CategoriasProduto C
		JOIN Produtos P ON C.IDCategoria = P.IDCategoria
	Group by C.DesignaçãoCategoria
Go

--verificar view
EXEC sp_helptext ListagemProdutosCategoria

--apagar view
Drop View ListagemProdutosCategoria

--ver views
Select * From ListagemProdutosCategoria

-----
Go
Create View RelatorioClientes AS 
Select PrimeirosNomes, UltimoNome, Cidade, Sum(SubTotal) as 'Total de Vendas' From Clientes C
	JOIN Vendas V ON C.IDCliente = V.IDCliente
	JOIN VendasProdutos VP ON V.IDVenda = VP.IDVenda
Group by C.PrimeirosNomes, C.UltimoNome, C.Cidade
Go

Select * From RelatorioClientes Where Cidade = 'Lisboa'


----- Views de Acção (inserir, apagar ou alterar dados por uma view)
Go
Create View GerirCategorias AS
Select IDCategoria, DesignaçãoCategoria From CategoriasProduto
Go

Select * From GerirCategorias

---inserir pela view
INSERT INTO GerirCategorias Values(104,'Fotografia Digital')
INSERT INTO GerirCategorias Values(105,'GPS')
--fazer update pela view
UPDATE GerirCategorias SET DesignaçãoCategoria = 'GPS +'
Where IDCategoria = 105
--apagar pela view
DELETE From GerirCategorias Where IDCategoria = 105





