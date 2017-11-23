USE Avalia��o_Pedag�gica

Create Table UnidadeCurricular(
ID_UC int,
Descri��o nchar(100) not null,
T smallint default (0),
TP smallint default (0),
L smallint default (0),
Sem smallint default (0),
TC smallint default (0),
OT smallint default (0),
Semestre nchar(20) not null, --por ex.1�semestre ou 2�semestre
Ano nchar(20) not null, --por ex.1�Ano ou 2�Ano
ECTS decimal(18,1) not null,
CONSTRAINT PK_ID_UC Primary Key (ID_UC),
CONSTRAINT CK_ECTS Check (ECTS <= 35.0) --limite de creditos
);

Create Table Cursos(
ID_Curso smallint, 
Descri��o nchar(50) not null,
CONSTRAINT PK_ID_Curso Primary Key (ID_Curso)
);

Create Table UC_Cursos( --junta as unidade(s) curriculare(s) de um curso(s)
ID_UC_Curso smallint, 
ID_UC int UNIQUE not null, 
ID_Curso smallint not null,
CONSTRAINT PK_UC_Curso Primary Key (ID_UC_Curso),
CONSTRAINT FK_ID_UC Foreign Key (ID_UC) REFERENCES UnidadeCurricular (ID_UC),
CONSTRAINT FK_ID_Curso Foreign Key (ID_Curso) REFERENCES Cursos (ID_Curso)
);

Create Table Alunos(
ID_Aluno smallint,
Primeiro_Nome varchar (50) not null,
Ultimo_Nome varchar (50) not null,
CONSTRAINT PK_ID_Aluno Primary Key (ID_Aluno),
CONSTRAINT CK_ValidaNomes Check (Primeiro_Nome NOT LIKE '%[^ A-Z]%' and Ultimo_Nome NOT LIKE '%[^ A-Z]%') 
);

Create Table Docentes( --mostra que unidade(s) curriculare(s) de um curso(s) o docente(s) lecionam
ID_Docente smallint IDENTITY(1,1),
Primeiro_Nome nchar (50) not null,
Ultimo_Nome nchar (50) not null,
CONSTRAINT PK_ID_Docente Primary Key (ID_Docente),
CONSTRAINT CK_Valida_Nomes Check (Primeiro_Nome NOT LIKE '%[^ A-Z]%' and Ultimo_Nome NOT LIKE '%[^ A-Z]%') 
);

Create Table UC_Docentes(
ID_UC_Docente smallint IDENTITY(1,1),
ID_Docente smallint not null,
ID_UC_Curso smallint not null,
CONSTRAINT PK_ID_UC_Docente Primary Key (ID_UC_Docente),
CONSTRAINT FK_ID_Docente Foreign Key (ID_Docente) REFERENCES Docentes (ID_Docente),
CONSTRAINT FK_ID_UC_Curso Foreign Key (ID_UC_Curso) REFERENCES UC_Cursos (ID_UC_Curso)
);

Create Table Quest�es( --14 quest�es (P1.1 a P1.5) e (P2.1 a P2.9)
ID_Quest�o nvarchar(4),
Quest�o nchar(1000) not null,
CONSTRAINT PK_ID_Quest�o Primary Key (ID_Quest�o),
CONSTRAINT CK_ID_Quest�o Check(ID_Quest�o LIKE '[A-Z][1-9][.][1-9]')
);

Create Table Avalia��o_P(
ID_Avalia��o smallint IDENTITY(1,1),
ID_Quest�o nvarchar(4) not null, --numero da quest�o (se for .1 � referente � unidade curricular, se for .2 � referente aos docentes)
Avalia��o smallint, --avalia��o pelo aluno
Horas_Trabalho_Estudo smallint,
Data_Avalia��o datetime not null,
CONSTRAINT PK_ID_Avalia��o Primary Key (ID_Avalia��o),
CONSTRAINT FK_ID_Quest�o Foreign Key (ID_Quest�o) REFERENCES Quest�es (ID_Quest�o),
CONSTRAINT CK_Avalia��o Check (Avalia��o >=1 and Avalia��o <=5), -- entre [1-5] escala
CONSTRAINT CK_Data_Avalia��o Check (Year(Data_Avalia��o)>1950 AND Year(Data_Avalia��o)<=Year(getdate())), 
);

Create Table Inscri��o(
ID_Inscri��o smallint IDENTITY(1,1) UNIQUE,
ID_Aluno smallint not null,
--ID_Curso smallint not null,
--ID_UC int not null,
ID_UC_Curso smallint not null,
AnoLectivo nvarchar(10) not null,
Data_Inscri��o datetime not null,
Estado nchar(10) not null default('Activa'), --pode estar activa ou caso uma inscri��o seja eliminada passa para anulada 
CONSTRAINT PK_ID_Inscri��o Primary Key (ID_Aluno, ID_UC_Curso, AnoLectivo) ,
CONSTRAINT FK_ID_Aluno Foreign Key (ID_Aluno) REFERENCES Alunos (ID_Aluno),
--CONSTRAINT FK_ID_Curso_Insc Foreign Key (ID_Curso) REFERENCES Cursos (ID_Curso),
--CONSTRAINT FK_ID_UC_Insc Foreign Key (ID_UC) REFERENCES UnidadeCurricular (ID_UC),
CONSTRAINT FK_ID_UCC_Insc Foreign Key (ID_UC_Curso) REFERENCES UC_Cursos (ID_UC_Curso),
CONSTRAINT CK_EstadoInscri��o Check (Estado = 'Activa' OR Estado = 'Anulada'),
CONSTRAINT CK_AnoLectivo Check (AnoLectivo LIKE '[1-9][0-9][0-9][0-9]-[1-9][0-9][0-9][0-9]' AND
								AnoLectivo LIKE '[1-9][0-9][0-9][0-9]-[1-9][0-9][0-9][0-9]'), 
CONSTRAINT CK_Data_Inscri��o Check (Year(Data_Inscri��o)>1950 AND Year(Data_Inscri��o)<=Year(getdate())), 
);

Create Table Avalia��es(
Avalia��o smallint IDENTITY(1,1),
ID_Inscri��o smallint not null,
ID_Avalia��o smallint not null,
CONSTRAINT PK_Avalia��o Primary Key(Avalia��o),
CONSTRAINT FK_ID_Inscri��o Foreign Key (ID_Inscri��o) REFERENCES Inscri��o (ID_Inscri��o),
CONSTRAINT FK_ID_Avalia��o_P Foreign Key (ID_Avalia��o) REFERENCES Avalia��o_P (ID_Avalia��o)
);

Create Table Avalia��o_Sincronizada(
ID_Avalia��o smallint IDENTITY(1,1),
ID_Quest�o nvarchar(4) not null, --numero da quest�o (se for .1 � referente � unidade curricular, se for .2 � referente aos docentes)
Avalia��o smallint, --avalia��o pelo aluno
Horas_Trabalho_Estudo smallint,
Data_Avalia��o datetime not null,
);

Select * From Alunos
Select * From Quest�es
Select * From Cursos
Select * From Docentes
Select * From UC_Docentes
Select * From UnidadeCurricular
Select * From UC_Cursos
Select * From Inscri��o
Select * From Avalia��o_P
Select * From Avalia��es


---------------------------------------------------------------------------------------
--1-Procedimentos

-- Referente a a)
Go
Create Proc proc_Alunos1  (@info_aluno smallint)  
AS
	PRINT 'Unidades Curriculares em que se encontra inscrito o aluno Nr.:  ' +Convert(nchar(100), @info_aluno)
	PRINT '-----------------------------------------------------------------------'
	Select UC.Descri��o From Inscri��o I JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso 
		JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC Where I.ID_Aluno = @info_aluno
Go

Exec proc_Alunos1 17667 --por exemplo para o aluno ID 17667

------------------------------------------------------------------------------------------------
-- Referente a b)
Go
Create Proc proc_Alunos2  (@info_aluno smallint)  
AS
	PRINT 'Aluno Nr: ' +Convert(nchar(100), @info_aluno) 
	Select C.Descri��o as 'Curso', UC.Semestre as 'Semestre', SUM(UC.ECTS) as 'Total de ECTS que se encontra inscrito:' From UnidadeCurricular UC
		JOIN UC_Cursos UCC ON UCC.ID_UC = UC.ID_UC
		JOIN Inscri��o I ON I.ID_UC_Curso = UCC.ID_UC_Curso
		JOIN Cursos C ON C.ID_Curso = UCC.ID_Curso
		Where I.ID_Aluno = @info_aluno AND I.AnoLectivo = '2015-2016'
		Group by C.Descri��o,UC.Semestre
		Order by UC.Semestre
Go

Exec proc_Alunos2 18058 --por exemplo para o aluno ID 18058

------------------------------------------------------------------------------------------------
-- Referente a c)
Go
Create Proc proc_Cursos1  (@info_curso smallint)  
AS	
	PRINT 'Unidades Curriculares do Curso de '  +Convert(nchar(50), @info_curso)
	Select UC.Descri��o 'Unidade Curricular' From UnidadeCurricular UC JOIN UC_Cursos UCC ON 
		UC.ID_UC = UCC.ID_UC JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso		
		JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso
		JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
		Where C.ID_Curso = @info_curso			
		Order by UC.Descri��o, UC.Semestre, D.ID_Docente
Go

Exec proc_Cursos1 9147 --por exemplo para o curso de Gest�o

------------------------------------------------------------------------------------------------
-- Referente a d)
Go
Create Proc proc_Cursos2 (@info_curso smallint)  
AS
	Select UC.Descri��o 'Unidade Curricular', MIN(AP.Horas_Trabalho_Estudo)'Minimo de Horas',avg(AP.Horas_Trabalho_Estudo)'Media de Horas',
	MAX(AP.Horas_Trabalho_Estudo)'Max de Horas' From UnidadeCurricular UC
		JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC
		JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
		JOIN Inscri��o I ON UCC.ID_UC_Curso = I.ID_UC_Curso
		JOIN Avalia��es AV ON AV.ID_Inscri��o = I.ID_Inscri��o
		JOIN Avalia��o_P AP ON AV.ID_Avalia��o = AP.ID_Avalia��o
		where C.ID_Curso=@info_curso
		Group by UC.Descri��o, UC.Semestre
		Order by UC.Semestre
Go

Exec proc_Cursos2 9119 --por exemplo para o curso de Engenharia Inform�tica

------------------------------------------------------------------------------------------------
-- Referente a e)
Go
Create Proc proc_UC (@info_uc int)  
AS
	PRINT 'Alunos inscritos na unidade curricular: ' +convert(nchar(10),@info_UC)
	PRINT '-----------------------------------------------------------------------------------'
	
	Select I.ID_Aluno, A.Primeiro_Nome, A.Ultimo_Nome From Inscri��o I 
		JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso 
		JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
		JOIN Alunos A ON I.ID_Aluno = A.ID_Aluno 
		Where UC.ID_UC = @info_uc and AnoLectivo = '2015-2016'
Go

Exec proc_UC 201454 --por exemplo para a unidade curricular Economia I

------------------------------------------------------------------------------------------------
-- Referente a f)
Go
Create Proc proc_NumeroTotalInscri��es (@Anolectivo1 datetime, @Anolectivo2 datetime) 
AS
	PRINT 'Numero de Inscri��es realizadas no Ano Lectivo: ' +convert(nchar(10),(Year(@Anolectivo1)))+
	convert(nchar(10),(Year(@Anolectivo2)))	
	Select Count(I.ID_Inscri��o) as 'Total de Inscri��es', C.Descri��o From Inscri��o I JOIN UC_Cursos UCC 
	ON I.ID_UC_Curso = UCC.ID_UC_Curso JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
	Where (Year(I.Data_Inscri��o) = Year(@Anolectivo1)) OR 
	(Year(I.Data_Inscri��o) = Year(@Anolectivo2))
	Group by C.Descri��o
Go

Exec proc_NumeroTotalInscri��es '2015','2016' --por exemplo para o ano lectivo 2015-2016

------------------------------------------------------------------------------------------------
-- Referente a g)
Go
Create Proc proc_CursosAvalia��o (@info_curso smallint)  
AS
	PRINT 'M�dia das Avalia��es obtidas das unidades curriculares do curso: ' +convert(nchar(10),(@info_curso))
	Select AVG(AP.Avalia��o) 'M�dia Avalia��es obtidas de UCs' From Avalia��o_P AP 
	JOIN Avalia��es AV ON AP.ID_Avalia��o = AV.ID_Avalia��o 
	JOIN Inscri��o I ON AV.ID_Inscri��o = I.ID_Inscri��o
	JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
	JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
	Where (AP.ID_Quest�o = 'P1.1' OR ID_Quest�o = 'P1.2' OR ID_Quest�o = 'P1.3' OR
	ID_Quest�o = 'P1.4' OR ID_Quest�o = 'P1.5') AND C.ID_Curso = @info_curso
	Group by C.ID_Curso
Go

Exec proc_CursosAvalia��o 9119 --por exemplo para o curso ID 9119 Engenharia Inform�tica

------------------------------------------------------------------------------------------------
-- Referente a h)
Go
Create Proc proc_Docente (@info_docente smallint)  
AS
	Select UC.Descri��o, AVG(AP.Avalia��o) 'M�dia' From Avalia��o_P AP 
	JOIN Avalia��es AV ON AP.ID_Avalia��o = AV.ID_Avalia��o 
	JOIN Inscri��o I ON AV.ID_Inscri��o = I.ID_Inscri��o
	JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
	JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
	JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso 
	JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
	where (AP.ID_Quest�o = 'P2.1' OR ID_Quest�o = 'P2.2' OR ID_Quest�o = 'P2.3' OR
	ID_Quest�o = 'P2.4' OR ID_Quest�o = 'P2.5' OR ID_Quest�o = 'P2.6' OR 
	ID_Quest�o = 'P2.7' OR ID_Quest�o = 'P2.8' OR ID_Quest�o = 'P2.9') AND D.ID_Docente = @info_docente
	Group by UC.Descri��o
Go

Exec proc_Docente 4 --por exemplo para a docente Cristina Dias 

------------------------------------------------------------------------------------------------
-- Referente a i)
Go
Create Proc proc_Parametro (@info_parametro nvarchar(4))  
AS
	Select C.Descri��o, AVG(AP.Avalia��o) 'M�dia' From Avalia��o_P AP 
	JOIN Avalia��es AV ON AP.ID_Avalia��o = AV.ID_Avalia��o 
	JOIN Inscri��o I ON AV.ID_Inscri��o = I.ID_Inscri��o
	JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
	JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
	Where AP.ID_Quest�o = @info_parametro
	Group by C.Descri��o 
Go

Exec proc_Parametro 'P1.1' --por exemplo para o parametro P1.1

------------------------------------------------------------------------------------------------
--2 - Seguran�a
-- Referente a a)
Go
Create Trigger tr_Inscri��oAnulada_INSTEADOF_DELETE ON Inscri��o INSTEAD OF DELETE AS
BEGIN
	Declare @ID_Inscri��o smallint
	SET @ID_Inscri��o = (Select ID_Inscri��o From deleted)
	PRINT 'Inscri��o Nr.'+ convert(varchar(10),@ID_Inscri��o) + ' Anulada!!'
	UPDATE Inscri��o set Estado = 'Anulada' where ID_Inscri��o = @ID_Inscri��o
END
Go

-- Referente a b) e g) - Impedir que os registo de avalia��o sejam alterados ou eliminados, s� permite alterar 
-- a designa��o dos diferentes parametros. A data e hora de registo � guardado quando h� insert da avalia��o
Go
Create Trigger tr_Avalia��o_P_INSTEADOF_DELETE_UPDATE on Avalia��o_P INSTEAD OF DELETE, UPDATE AS
BEGIN
	IF(Select ID_Avalia��o From inserted) != '' AND (Select ID_Avalia��o From deleted) != ''
		BEGIN
			IF(Select Avalia��o From inserted) != (Select Avalia��o From deleted) OR 
			  (Select Horas_Trabalho_Estudo From inserted) != (Select Horas_Trabalho_Estudo From deleted) OR 
			  (Select Data_Avalia��o From inserted) != (Select Data_Avalia��o From deleted)
				BEGIN
					PRINT 'O registo indicado n�o pode ser alterado!!'
				END
			ELSE
				BEGIN
					IF(Select ID_Quest�o From inserted) != (Select ID_Quest�o From deleted)
					UPDATE Avalia��o_P SET ID_Quest�o = (Select ID_Quest�o From inserted)
					Insert into Avalia��o_Sincronizada (ID_Avalia��o, ID_Quest�o, Avalia��o, Horas_Trabalho_Estudo, Data_Avalia��o)
					Select * From inserted;
					PRINT 'Registo Actualizado!!'
				END
		END
	ELSE
		BEGIN
			PRINT 'O registo indicado n�o pode ser eliminado!!'
		END
END
Go


-- Referente a c) e d) - Impedir que um aluno se increva em dois cursos diferentes num mesmo ano lectivo ou em mais do que 35 ECTS por semestre
Go
Create Trigger tr_Inscri��oAluno_LimiteECTS_INSTEADOF_INSERT ON Inscri��o INSTEAD OF INSERT AS
BEGIN
	Declare @ID_Aluno smallint, @AnoLectivoActual nchar(10)

	SET @AnoLectivoActual = (Select AnoLectivo From inserted)
	SET @ID_Aluno = (Select ID_Aluno from inserted)

	Declare @Nr_Aluno smallint, @ID_UCC smallint, @AnoLectivo nchar(10), @Data_Inscricao date
		IF EXISTS (Select * From Inscri��o Where @Nr_Aluno = @ID_Aluno) AND EXISTS (Select * From Inscri��o Where AnoLectivo = @AnoLectivoActual)
			BEGIN	
				IF(Select Distinct C.ID_Curso From Cursos C 
				JOIN UC_Cursos UCC on C.ID_Curso = UCC.ID_Curso 
				JOIN Inscri��o I on UCC.ID_UC_Curso = I.ID_UC_Curso 
				Where I.ID_Aluno = @ID_Aluno) != (Select C.ID_Curso From Cursos C JOIN UC_Cursos UCC ON C.ID_Curso = UCC.ID_Curso JOIN inserted I ON I.ID_UC_Curso = UCC.ID_UC_Curso)
					BEGIN
					PRINT 'Um aluno apenas pode estar inscrito num curso num ano lectivo!!'
					END
				ELSE
					BEGIN
						IF(Select SUM(ECTS) From UnidadeCurricular UC JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC JOIN Inscri��o I ON I.ID_UC_Curso = UCC.ID_UC_Curso
						Where I.AnoLectivo = @AnoLectivoActual AND I.ID_Aluno = @ID_Aluno AND UC.Semestre =
						(Select Semestre From UnidadeCurricular UC JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC JOIN inserted I ON I.ID_UC_Curso = UCC.ID_UC_Curso 
						Where UCC.ID_UC_Curso = I.ID_UC_Curso)) > 35.0
							BEGIN
								PRINT 'O Aluno Nr. ' +Convert(nchar(10),@ID_Aluno)+ ' atingiu o n�mero m�ximo de cr�ditos por semestre!! Limite 35 ECTS!!'
							END
						ELSE
							BEGIN
							SET @Nr_Aluno = (Select ID_Aluno From inserted)
							SET @ID_UCC = (Select ID_UC_Curso From inserted)
							SET @AnoLectivo = (Select AnoLectivo From inserted)
							SET @Data_Inscricao = (Select Data_Inscri��o From inserted)
							Insert into Inscri��o (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscri��o)
							Values(@Nr_Aluno,@ID_UCC,@AnoLectivo,@Data_Inscricao)
							END
				END
			END
		ELSE
			BEGIN
				SET @Nr_Aluno = (Select ID_Aluno From inserted)
				SET @ID_UCC = (Select ID_UC_Curso From inserted)
				SET @AnoLectivo = (Select AnoLectivo From inserted)
				SET @Data_Inscricao = (Select Data_Inscri��o From inserted)
				Insert into Inscri��o (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscri��o)
				Values(@Nr_Aluno,@ID_UCC,@AnoLectivo,@Data_Inscricao)
			END
END
Go

-- Referente a h) 
Go
Create Trigger tr_Avalia��oSincronizada_AFTER_insert ON Avalia��o_P AFTER INSERT AS
BEGIN
	Insert into Avalia��o_Sincronizada (ID_Avalia��o, ID_Quest�o, Avalia��o, Horas_Trabalho_Estudo, Data_Avalia��o)
	Select * From inserted;
END
Go
select * from Avalia��o_Sincronizada
------------------------------------------------------------------------------------------------
--3 - Views

--1.
Go
Create View view#01
AS
Select distinct ID_Quest�o as 'Par�metros de Avalia��o', Quest�o 'Descri��o do Par�metro' From Quest�es
Go

--2.
Go
Create View view#02
AS
Select Distinct C.Descri��o as 'Curso', UC.Descri��o as 'Unidade Curricular' From UnidadeCurricular UC 
JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Group by C.Descri��o, UC.Descri��o
Go

--3.
Go
Create View view#03
AS
Select Distinct C.Descri��o as 'Curso', UC.Descri��o as 'Unidade Curricular', D.Primeiro_Nome+D.Ultimo_Nome as 'Docente' From UnidadeCurricular UC 
JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC
JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso
JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Group by C.Descri��o, UC.Descri��o, D.Primeiro_Nome+D.Ultimo_Nome 
Go

--4.
Go
Create View view#04
AS
Select UC.Descri��o, COUNT(I.ID_Inscri��o) as 'Total Inscritos' From Inscri��o I 
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Where I.AnoLectivo = '2015-2016'
Group by UC.Descri��o, UCC.ID_Curso
Go

--5.
Go
Create View view#05
AS
Select C.Descri��o, COUNT(A.Avalia��o) 'Total de Avalia��es Obtidas' From Avalia��es A 
JOIN Inscri��o I ON I.ID_Inscri��o = A.ID_Inscri��o
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Where I.AnoLectivo = '2015-2016'
Group by C.Descri��o
Go

--6.
Go
Create View view#06
AS
Select UC.Descri��o, COUNT(AP.Avalia��o) as 'Total Avalia��es Obtidas',(COUNT(Distinct A.ID_Aluno)*COUNT(Distinct AP.ID_Quest�o))-COUNT(AP.ID_Avalia��o)'Total em Falta' From Avalia��es AP
JOIN Avalia��es AV ON AP.ID_Avalia��o = AV.ID_Avalia��o
JOIN Inscri��o I ON I.ID_Inscri��o = AV.ID_Inscri��o
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
JOIN Alunos A ON I.ID_Aluno = A.ID_Aluno
Group by UC.Descri��o
Go

--7.
Go
Create View view#07
AS
Select D.Primeiro_Nome, D.Ultimo_Nome, AVG(A.Avalia��o) as 'M�dia Avalia��es Obtidas', 
UC.Descri��o 'Respons�vel pela Unidade Curricular' From Avalia��es A 
JOIN Avalia��o_P AP ON A.ID_Avalia��o = AP.ID_Avalia��o
JOIN Inscri��o I ON I.ID_Inscri��o = A.ID_Inscri��o
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso
JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
Where AP.ID_Quest�o = 'P2.1' OR AP.ID_Quest�o = 'P2.2' OR AP.ID_Quest�o = 'P2.3' OR AP.ID_Quest�o = 'P2.4' 
OR AP.ID_Quest�o = 'P2.5' OR AP.ID_Quest�o = 'P2.6' OR AP.ID_Quest�o = 'P2.7' OR AP.ID_Quest�o = 'P2.8' 
OR AP.ID_Quest�o = 'P2.9'
Group by D.Primeiro_Nome, D.Ultimo_Nome, UC.Descri��o
Go

--8.
Go
Create View view#08
AS
Select Q.ID_Quest�o From Avalia��es A 
JOIN Avalia��o_P AP ON A.ID_Avalia��o = AP.ID_Avalia��o
JOIN Quest�es Q ON AP.ID_Quest�o = Q.ID_Quest�o
JOIN Inscri��o I ON I.ID_Inscri��o = A.ID_Inscri��o
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
where Q.ID_Quest�o = MIN (AP.Avalia��o) and Q.ID_Quest�o = MAX(AP.Avalia��o)
Group by Q.ID_Quest�o
Go
