Create Database MyDataBase

Go
Use MyDataBase

Create Table Clientes(
ID_Cliente int Check (ID_Cliente > 0 ),
PrimeiroNome nchar(50) NOT NULL,
UltimoNome nchar(50) NOT NULL,
Endereço nchar(50) default 'Unknown',
CodigoPostal nchar(8),
Cidade nchar(50) default 'Lisboa',
Pais nchar(25) default 'Portugal',
DataNascimento datetime,
Sexo nchar(1) NOT NULL,
CONSTRAINT PK_Clientes PRIMARY KEY (ID_Cliente),
CONSTRAINT CK_CodigoPostal Check (CodigoPostal LIKE '[1-9][0-9][0-9][0-9][-][0-9][0-9][0-9]'),
CONSTRAINT CK_DataNascimento Check (Year(DataNascimento)>1950 AND Year(DataNascimento)<Year(getdate())),
CONSTRAINT CK_Sexo Check (Sexo IN ('M','F')),
);

Create Table Vendas(
ID_Venda int, 
DataVenda datetime default getdate(),
DataEntrega datetime,
ID_Cliente int,
Método_Pagamento nchar(20),
Status nchar(10),
CONSTRAINT PK_IDVenda PRIMARY KEY (ID_Venda),
CONSTRAINT FK_IDCliente FOREIGN KEY (ID_Cliente) REFERENCES Clientes (ID_Cliente),
CONSTRAINT CK_Método_Pagamento Check (Método_Pagamento IN ('Numerário','Cheque','VISA')),
CONSTRAINT CK_Status Check (Status IN ('Concluída','Retida')),
CONSTRAINT CK_DataEntrega Check (DataEntrega >= DataVenda)
);

Select * From Clientes
Select * From Vendas

EXEC sp_help Clientes

Drop table Clientes

USE MyDataBase
-- Registos de Clientes
Insert into Clientes Values (1, 'João', 'Costa', 'Rua de Cima', '7300-111', 'Portalegre', 'Portugal', '1980-2-23','M')
Insert into Clientes Values (2, 'Pedro', 'Silva', 'Rua de Baixo', '7300-112','Portalegre', 'Portugal', '1980-3-5','M')
Insert into Clientes Values (3, 'Maria', 'João', 'Avenida J', '7300-113', 'Portalegre', 'Portugal', '1980-2-6','F')
Insert into Clientes Values (4, 'Maria', 'Pereira', 'Desconhecida', '2100-111','Lisboa', 'Portugal', '1970-2-9','F')
Insert into Clientes Values (5, 'Carlos', 'Abreu', 'Desconhecida ', '2100-121', 'Lisboa', 'Portugal', '1961-12-6','M')
Insert into Clientes Values (6, 'Joaquim', 'Santos', 'Desconhecida ', '7300-121', 'Avis', 'Portugal', '1969-10-1','M')
Insert into Clientes Values (7, 'Joana', 'Martins', 'Rua da Pedra ', '7300-131', 'Avis', 'Portugal', '1972-4-4','F')
Insert into Clientes Values (8, 'Vicente', 'Louro', 'Desconhecida ', '7300-141', 'Nisa', 'Portugal', '1978-1-1','M')
Insert into Clientes Values (9, 'Marisa', 'Batalha', 'Rua do O ', '2100-411', 'Lisboa', 'Portugal', '1980-11-11','F')
Insert into Clientes Values (10, 'João', 'Rocha', 'Desconhecida ', '7300-221', 'Nisa', 'Portugal', '1969-10-1','M')
Insert into Clientes Values (11, 'João', 'Lopes', 'Pedra Basta', '7300-221', 'Portalegre', 'Portugal', '1970-10-1','M')
Insert into Clientes Values (12, 'Fatima', 'Lopes', 'Rua de Belem', '2150-221', 'Lisboa', 'Portugal', '1958-10-1','F')
Insert into Clientes Values (13, 'Anabela', 'Pereira', 'Vale de Aboim', '5200-221', 'Bragança', 'Portugal', '1980-5-1','F')
Insert into Clientes Values (14, 'Luís', 'Miranda', 'Bairro dos Assentos', '7300-058', 'Portalegre', 'Portugal', '1978-5-1','M')
Insert into Clientes Values (15, 'Anabela', 'Sousa', 'Rua da Républica', '3200-221', 'Aveiro', 'Portugal', '1980-5-1','M')
Insert into Clientes Values (16, 'Tiago', 'Lourenço', 'Praça do soldado', '3200-221', 'Aveiro', 'Portugal', '1979-5-1','M')
Insert into Clientes Values (17, 'Susana', 'Silva', 'Bairro dos Assentos', '7300-789', 'Portalegre', 'Portugal', '1975-6-11','F')
-- Registos de Vendas
Insert Into Vendas Values (1201, '2008-11-1', '2008-11-1', 1,'Numerário','Concluída')
Insert Into Vendas Values (1202, '2008-11-2', '2008-11-2', 1, 'Numerário','Concluída')
Insert Into Vendas Values (1203, '2008-11-2', '2008-11-2', 1, 'Numerário','Concluída')
Insert Into Vendas Values (1204, '2008-11-28', '2008-11-28', 5, 'Numerário','Concluída')
Insert Into Vendas Values (1205, '2008-11-28', '2008-11-28', 6, 'Cheque','Concluída')
Insert Into Vendas Values (1206, '2008-11-28', '2008-11-28', 7, 'Numerário','Concluída')
Insert Into Vendas Values (1207, '2008-11-28', '2008-11-28', 7, 'Numerário','Concluída')
Insert Into Vendas Values (1208, '2008-11-28', '2008-11-28', 5, 'Numerário','Concluída')
Insert Into Vendas Values (1209, '2008-11-28', '2008-11-28', 8, 'Numerário','Concluída')
Insert Into Vendas Values (1210, '2008-11-28', '2008-11-28', 8, 'VISA','Concluída')
Insert Into Vendas Values (1211, '2008-11-28', '2008-11-28', 9, 'Numerário','Concluída')
Insert Into Vendas Values (1212, '2008-1-28', '2008-1-28', 10, 'Numerário','Concluída')
Insert Into Vendas Values (1213, '2008-1-28', '2008-1-28', 10, 'Numerário','Concluída')
Insert Into Vendas Values (1214, '2008-11-28', '2008-11-28', 5, 'VISA','Retida')
Insert Into Vendas Values (1215, '2008-11-28', '2008-11-28', 1, 'Numerário','Concluída')
Insert Into Vendas Values (1216, '2008-11-28', '2008-11-28', 2, 'Numerário','Concluída')
Insert Into Vendas Values (1217, '2008-11-28', '2008-11-28', 3, 'VISA','Retida')
Insert Into Vendas Values (1218, '2008-11-28', '2008-11-28', 3, 'VISA','Concluída')
Insert Into Vendas Values (1219, '2008-11-28', '2008-11-28', 8, 'Numerário','Concluída')
Insert Into Vendas Values (1220, '2008-11-28', '2008-11-29', 1, 'Cheque','Concluída')
Insert Into Vendas Values (1221, '2008-11-28', '2008-11-29', 4, 'Numerário','Concluída')
Insert Into Vendas Values (1222, '2008-11-28', '2008-11-29', 4, 'VISA','Concluída')
Insert Into Vendas Values (1223, '2008-11-28', '2008-11-29', 5, 'Numerário','Concluída')
Insert Into Vendas Values (1224, '2008-12-2', '2008-12-2', 10, 'Numerário','Concluída')
Insert Into Vendas Values (1225, '2008-12-2', '2008-12-2', 11, 'VISA','Retida')
Insert Into Vendas Values (1226, '2008-12-2', '2008-12-2', 12, 'VISA','Concluída')
Insert Into Vendas Values (1227, '2008-12-2', '2008-12-2', 12, 'Numerário','Concluída')
Insert Into Vendas Values (1228, '2008-12-2', '2008-12-2', 13, 'Cheque','Concluída')
Insert Into Vendas Values (1229, '2008-12-2', '2008-12-2', 12, 'Numerário','Concluída')
Insert Into Vendas Values (1230, '2008-12-2', '2008-12-2', 12, 'VISA','Concluída')
Insert Into Vendas Values (1231, '2008-12-2', '2008-12-2', 1, 'Numerário','Concluída')