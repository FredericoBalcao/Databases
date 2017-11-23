Create database db_ControloQuotas

USE db_ControloQuotas

Create Table TiposQuotas(
IDTipoQuota int not null,
TipoQuota nchar(10) not null,
QuotaMensal smallmoney not null,
CONSTRAINT PK_TipoQuotas Primary Key(IDTipoQuota)
);
Go
INSERT INTO TiposQuotas VALUES (1,'Juvenil',50)
INSERT INTO TiposQuotas VALUES (2,'Adulto',70)
INSERT INTO TiposQuotas VALUES (3,'Senior',50)

Select * From TiposQuotas

Create Table Socios
(
NumeroSocio int identity(1000,1),
IndicadoPor int,
NomeCompleto nvarchar(30) not null,
DataInscrição datetime default getdate(),
IDTipoQuota int not null,
Sexo char(1),
CONSTRAINT PK_NumeroSocio Primary Key (NumeroSocio),
CONSTRAINT FK_IndicadoPor Foreign Key (IndicadoPor) REFERENCES Socios (NumeroSocio),
CONSTRAINT Fk_TipoQuotas Foreign Key (IDTipoQuota) REFERENCES TiposQuotas (IDTipoQuota),
CONSTRAINT CK_Sexo Check (Sexo IN ('M','F'))
);

INSERT INTO Socios (NomeCompleto,IDTipoQuota, Sexo) VALUES('João Costa',1,'M')
INSERT INTO Socios (NomeCompleto,IDTipoQuota, Sexo) VALUES('Maria Abreu',2,'F')
INSERT INTO Socios (NomeCompleto,IDTipoQuota, Sexo) VALUES('Pedro Santos',3,'M')

Select * From Socios

Create Table PagamentosQuotas
(
NumeroSocio int not null,
DataPagamento datetime,
AnoQuota char(4) not null,
MêsQuota char(2) not null,
Mensalidade smallmoney,
IVA decimal(4,2),
TotalPagar As Mensalidade+(Mensalidade*IVA),
CONSTRAINT PK_Numero_Socio Primary Key (NumeroSocio, AnoQuota, MêsQuota),
CONSTRAINT FK_Numero_Socio Foreign Key (NumeroSocio) REFERENCES Socios (NumeroSocio),
CONSTRAINT CK_AnoQuota Check(AnoQuota LIKE '[1-2][0-9][0-9][0-9]'),
CONSTRAINT CK_MêsQuota Check(MêsQuota LIKE '[0-1][0-9]')
);

Select * From PagamentosQuotas

INSERT INTO PagamentosQuotas (NumeroSocio,DataPagamento,AnoQuota,MêsQuota) VALUES(1000,'2010-01-19 10:45:51:060','2010','01')
INSERT INTO PagamentosQuotas (NumeroSocio,DataPagamento,AnoQuota,MêsQuota) VALUES(1000,'2010-01-19 10:45:51:060','2010','02')
INSERT INTO PagamentosQuotas (NumeroSocio,DataPagamento,AnoQuota,MêsQuota) VALUES(1001,'2010-01-19 10:45:51:060','2010','01')
INSERT INTO PagamentosQuotas (NumeroSocio,DataPagamento,AnoQuota,MêsQuota) VALUES(1001,'2010-01-19 10:45:51:060','2010','02')
INSERT INTO PagamentosQuotas (NumeroSocio,DataPagamento,AnoQuota,MêsQuota) VALUES(1002,'2010-01-19 10:45:51:060','2010','01')


---------------------------------------------
UPDATE PagamentosQuotas SET IVA = (0.23)

UPDATE PagamentosQuotas SET Mensalidade = 
	 (Select QuotaMensal From TiposQuotas TQ
	 JOIN Socios S ON S.IDTipoQuota = TQ.IDTipoQuota
	 Where PagamentosQuotas.NumeroSocio = S.NumeroSocio
	 )

UPDATE Socios SET IndicadoPor = 1002 Where NumeroSocio = 1000
UPDATE Socios SET IndicadoPor = 1002 Where NumeroSocio = 1001
UPDATE TiposQuotas SET QuotaMensal = 40 Where TipoQuota = 'Senior'

UPDATE Socios SET IDTipoQuota = 13 Where IDTipoQuota = 3

ALTER TABLE Socios DROP CONSTRAINT FK_TipoQuotas
ALTER TABLE Socios ADD Constraint FK_TipoQuotas
	Foreign Key (IDTipoQuota) REFERENCES TipoQuotas (IDTipoQuota) ON UPDATE CASCADE

UPDATE TiposQuotas SET IDTipoQuota = 13 Where IDTipoQuota = 3

Select * From Socios 

ALTER TABLE Socios ADD EstadoInscrição nchar(10) not null default ('Activa')
ALTER TABLE Socios ADD Constraint CK_EstadoInscrição Check(EstadoInscrição IN ('Activa','Desactiva'))

	