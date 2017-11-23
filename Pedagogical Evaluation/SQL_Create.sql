USE Avaliação_Pedagógica

Create Table UnidadeCurricular(
ID_UC int,
Descrição nchar(100) not null,
T smallint default (0),
TP smallint default (0),
L smallint default (0),
Sem smallint default (0),
TC smallint default (0),
OT smallint default (0),
Semestre nchar(20) not null, --por ex.1ºsemestre ou 2ºsemestre
Ano nchar(20) not null, --por ex.1ºAno ou 2ºAno
ECTS decimal(18,1) not null,
CONSTRAINT PK_ID_UC Primary Key (ID_UC),
CONSTRAINT CK_ECTS Check (ECTS <= 35.0) --limite de creditos
);

Create Table Cursos(
ID_Curso smallint, 
Descrição nchar(50) not null,
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

Create Table Questões( --14 questões (P1.1 a P1.5) e (P2.1 a P2.9)
ID_Questão nvarchar(4),
Questão nchar(1000) not null,
CONSTRAINT PK_ID_Questão Primary Key (ID_Questão),
CONSTRAINT CK_ID_Questão Check(ID_Questão LIKE '[A-Z][1-9][.][1-9]')
);

Create Table Avaliação_P(
ID_Avaliação smallint IDENTITY(1,1),
ID_Questão nvarchar(4) not null, --numero da questão (se for .1 é referente à unidade curricular, se for .2 é referente aos docentes)
Avaliação smallint, --avaliação pelo aluno
Horas_Trabalho_Estudo smallint,
Data_Avaliação datetime not null,
CONSTRAINT PK_ID_Avaliação Primary Key (ID_Avaliação),
CONSTRAINT FK_ID_Questão Foreign Key (ID_Questão) REFERENCES Questões (ID_Questão),
CONSTRAINT CK_Avaliação Check (Avaliação >=1 and Avaliação <=5), -- entre [1-5] escala
CONSTRAINT CK_Data_Avaliação Check (Year(Data_Avaliação)>1950 AND Year(Data_Avaliação)<=Year(getdate())), 
);

Create Table Inscrição(
ID_Inscrição smallint IDENTITY(1,1) UNIQUE,
ID_Aluno smallint not null,
--ID_Curso smallint not null,
--ID_UC int not null,
ID_UC_Curso smallint not null,
AnoLectivo nvarchar(10) not null,
Data_Inscrição datetime not null,
Estado nchar(10) not null default('Activa'), --pode estar activa ou caso uma inscrição seja eliminada passa para anulada 
CONSTRAINT PK_ID_Inscrição Primary Key (ID_Aluno, ID_UC_Curso, AnoLectivo) ,
CONSTRAINT FK_ID_Aluno Foreign Key (ID_Aluno) REFERENCES Alunos (ID_Aluno),
--CONSTRAINT FK_ID_Curso_Insc Foreign Key (ID_Curso) REFERENCES Cursos (ID_Curso),
--CONSTRAINT FK_ID_UC_Insc Foreign Key (ID_UC) REFERENCES UnidadeCurricular (ID_UC),
CONSTRAINT FK_ID_UCC_Insc Foreign Key (ID_UC_Curso) REFERENCES UC_Cursos (ID_UC_Curso),
CONSTRAINT CK_EstadoInscrição Check (Estado = 'Activa' OR Estado = 'Anulada'),
CONSTRAINT CK_AnoLectivo Check (AnoLectivo LIKE '[1-9][0-9][0-9][0-9]-[1-9][0-9][0-9][0-9]' AND
								AnoLectivo LIKE '[1-9][0-9][0-9][0-9]-[1-9][0-9][0-9][0-9]'), 
CONSTRAINT CK_Data_Inscrição Check (Year(Data_Inscrição)>1950 AND Year(Data_Inscrição)<=Year(getdate())), 
);

Create Table Avaliações(
Avaliação smallint IDENTITY(1,1),
ID_Inscrição smallint not null,
ID_Avaliação smallint not null,
CONSTRAINT PK_Avaliação Primary Key(Avaliação),
CONSTRAINT FK_ID_Inscrição Foreign Key (ID_Inscrição) REFERENCES Inscrição (ID_Inscrição),
CONSTRAINT FK_ID_Avaliação_P Foreign Key (ID_Avaliação) REFERENCES Avaliação_P (ID_Avaliação)
);

Create Table Avaliação_Sincronizada(
ID_Avaliação smallint IDENTITY(1,1),
ID_Questão nvarchar(4) not null, --numero da questão (se for .1 é referente à unidade curricular, se for .2 é referente aos docentes)
Avaliação smallint, --avaliação pelo aluno
Horas_Trabalho_Estudo smallint,
Data_Avaliação datetime not null,
);

Select * From Alunos
Select * From Questões
Select * From Cursos
Select * From Docentes
Select * From UC_Docentes
Select * From UnidadeCurricular
Select * From UC_Cursos
Select * From Inscrição
Select * From Avaliação_P
Select * From Avaliações


---------------------------------------------------------------------------------------
--1-Procedimentos

-- Referente a a)
Go
Create Proc proc_Alunos1  (@info_aluno smallint)  
AS
	PRINT 'Unidades Curriculares em que se encontra inscrito o aluno Nr.:  ' +Convert(nchar(100), @info_aluno)
	PRINT '-----------------------------------------------------------------------'
	Select UC.Descrição From Inscrição I JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso 
		JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC Where I.ID_Aluno = @info_aluno
Go

Exec proc_Alunos1 17667 --por exemplo para o aluno ID 17667

------------------------------------------------------------------------------------------------
-- Referente a b)
Go
Create Proc proc_Alunos2  (@info_aluno smallint)  
AS
	PRINT 'Aluno Nr: ' +Convert(nchar(100), @info_aluno) 
	Select C.Descrição as 'Curso', UC.Semestre as 'Semestre', SUM(UC.ECTS) as 'Total de ECTS que se encontra inscrito:' From UnidadeCurricular UC
		JOIN UC_Cursos UCC ON UCC.ID_UC = UC.ID_UC
		JOIN Inscrição I ON I.ID_UC_Curso = UCC.ID_UC_Curso
		JOIN Cursos C ON C.ID_Curso = UCC.ID_Curso
		Where I.ID_Aluno = @info_aluno AND I.AnoLectivo = '2015-2016'
		Group by C.Descrição,UC.Semestre
		Order by UC.Semestre
Go

Exec proc_Alunos2 18058 --por exemplo para o aluno ID 18058

------------------------------------------------------------------------------------------------
-- Referente a c)
Go
Create Proc proc_Cursos1  (@info_curso smallint)  
AS	
	PRINT 'Unidades Curriculares do Curso de '  +Convert(nchar(50), @info_curso)
	Select UC.Descrição 'Unidade Curricular' From UnidadeCurricular UC JOIN UC_Cursos UCC ON 
		UC.ID_UC = UCC.ID_UC JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso		
		JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso
		JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
		Where C.ID_Curso = @info_curso			
		Order by UC.Descrição, UC.Semestre, D.ID_Docente
Go

Exec proc_Cursos1 9147 --por exemplo para o curso de Gestão

------------------------------------------------------------------------------------------------
-- Referente a d)
Go
Create Proc proc_Cursos2 (@info_curso smallint)  
AS
	Select UC.Descrição 'Unidade Curricular', MIN(AP.Horas_Trabalho_Estudo)'Minimo de Horas',avg(AP.Horas_Trabalho_Estudo)'Media de Horas',
	MAX(AP.Horas_Trabalho_Estudo)'Max de Horas' From UnidadeCurricular UC
		JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC
		JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
		JOIN Inscrição I ON UCC.ID_UC_Curso = I.ID_UC_Curso
		JOIN Avaliações AV ON AV.ID_Inscrição = I.ID_Inscrição
		JOIN Avaliação_P AP ON AV.ID_Avaliação = AP.ID_Avaliação
		where C.ID_Curso=@info_curso
		Group by UC.Descrição, UC.Semestre
		Order by UC.Semestre
Go

Exec proc_Cursos2 9119 --por exemplo para o curso de Engenharia Informática

------------------------------------------------------------------------------------------------
-- Referente a e)
Go
Create Proc proc_UC (@info_uc int)  
AS
	PRINT 'Alunos inscritos na unidade curricular: ' +convert(nchar(10),@info_UC)
	PRINT '-----------------------------------------------------------------------------------'
	
	Select I.ID_Aluno, A.Primeiro_Nome, A.Ultimo_Nome From Inscrição I 
		JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso 
		JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
		JOIN Alunos A ON I.ID_Aluno = A.ID_Aluno 
		Where UC.ID_UC = @info_uc and AnoLectivo = '2015-2016'
Go

Exec proc_UC 201454 --por exemplo para a unidade curricular Economia I

------------------------------------------------------------------------------------------------
-- Referente a f)
Go
Create Proc proc_NumeroTotalInscrições (@Anolectivo1 datetime, @Anolectivo2 datetime) 
AS
	PRINT 'Numero de Inscrições realizadas no Ano Lectivo: ' +convert(nchar(10),(Year(@Anolectivo1)))+
	convert(nchar(10),(Year(@Anolectivo2)))	
	Select Count(I.ID_Inscrição) as 'Total de Inscrições', C.Descrição From Inscrição I JOIN UC_Cursos UCC 
	ON I.ID_UC_Curso = UCC.ID_UC_Curso JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
	Where (Year(I.Data_Inscrição) = Year(@Anolectivo1)) OR 
	(Year(I.Data_Inscrição) = Year(@Anolectivo2))
	Group by C.Descrição
Go

Exec proc_NumeroTotalInscrições '2015','2016' --por exemplo para o ano lectivo 2015-2016

------------------------------------------------------------------------------------------------
-- Referente a g)
Go
Create Proc proc_CursosAvaliação (@info_curso smallint)  
AS
	PRINT 'Média das Avaliações obtidas das unidades curriculares do curso: ' +convert(nchar(10),(@info_curso))
	Select AVG(AP.Avaliação) 'Média Avaliações obtidas de UCs' From Avaliação_P AP 
	JOIN Avaliações AV ON AP.ID_Avaliação = AV.ID_Avaliação 
	JOIN Inscrição I ON AV.ID_Inscrição = I.ID_Inscrição
	JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
	JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
	Where (AP.ID_Questão = 'P1.1' OR ID_Questão = 'P1.2' OR ID_Questão = 'P1.3' OR
	ID_Questão = 'P1.4' OR ID_Questão = 'P1.5') AND C.ID_Curso = @info_curso
	Group by C.ID_Curso
Go

Exec proc_CursosAvaliação 9119 --por exemplo para o curso ID 9119 Engenharia Informática

------------------------------------------------------------------------------------------------
-- Referente a h)
Go
Create Proc proc_Docente (@info_docente smallint)  
AS
	Select UC.Descrição, AVG(AP.Avaliação) 'Média' From Avaliação_P AP 
	JOIN Avaliações AV ON AP.ID_Avaliação = AV.ID_Avaliação 
	JOIN Inscrição I ON AV.ID_Inscrição = I.ID_Inscrição
	JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
	JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
	JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso 
	JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
	where (AP.ID_Questão = 'P2.1' OR ID_Questão = 'P2.2' OR ID_Questão = 'P2.3' OR
	ID_Questão = 'P2.4' OR ID_Questão = 'P2.5' OR ID_Questão = 'P2.6' OR 
	ID_Questão = 'P2.7' OR ID_Questão = 'P2.8' OR ID_Questão = 'P2.9') AND D.ID_Docente = @info_docente
	Group by UC.Descrição
Go

Exec proc_Docente 4 --por exemplo para a docente Cristina Dias 

------------------------------------------------------------------------------------------------
-- Referente a i)
Go
Create Proc proc_Parametro (@info_parametro nvarchar(4))  
AS
	Select C.Descrição, AVG(AP.Avaliação) 'Média' From Avaliação_P AP 
	JOIN Avaliações AV ON AP.ID_Avaliação = AV.ID_Avaliação 
	JOIN Inscrição I ON AV.ID_Inscrição = I.ID_Inscrição
	JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
	JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
	Where AP.ID_Questão = @info_parametro
	Group by C.Descrição 
Go

Exec proc_Parametro 'P1.1' --por exemplo para o parametro P1.1

------------------------------------------------------------------------------------------------
--2 - Segurança
-- Referente a a)
Go
Create Trigger tr_InscriçãoAnulada_INSTEADOF_DELETE ON Inscrição INSTEAD OF DELETE AS
BEGIN
	Declare @ID_Inscrição smallint
	SET @ID_Inscrição = (Select ID_Inscrição From deleted)
	PRINT 'Inscrição Nr.'+ convert(varchar(10),@ID_Inscrição) + ' Anulada!!'
	UPDATE Inscrição set Estado = 'Anulada' where ID_Inscrição = @ID_Inscrição
END
Go

-- Referente a b) e g) - Impedir que os registo de avaliação sejam alterados ou eliminados, só permite alterar 
-- a designação dos diferentes parametros. A data e hora de registo é guardado quando há insert da avaliação
Go
Create Trigger tr_Avaliação_P_INSTEADOF_DELETE_UPDATE on Avaliação_P INSTEAD OF DELETE, UPDATE AS
BEGIN
	IF(Select ID_Avaliação From inserted) != '' AND (Select ID_Avaliação From deleted) != ''
		BEGIN
			IF(Select Avaliação From inserted) != (Select Avaliação From deleted) OR 
			  (Select Horas_Trabalho_Estudo From inserted) != (Select Horas_Trabalho_Estudo From deleted) OR 
			  (Select Data_Avaliação From inserted) != (Select Data_Avaliação From deleted)
				BEGIN
					PRINT 'O registo indicado não pode ser alterado!!'
				END
			ELSE
				BEGIN
					IF(Select ID_Questão From inserted) != (Select ID_Questão From deleted)
					UPDATE Avaliação_P SET ID_Questão = (Select ID_Questão From inserted)
					Insert into Avaliação_Sincronizada (ID_Avaliação, ID_Questão, Avaliação, Horas_Trabalho_Estudo, Data_Avaliação)
					Select * From inserted;
					PRINT 'Registo Actualizado!!'
				END
		END
	ELSE
		BEGIN
			PRINT 'O registo indicado não pode ser eliminado!!'
		END
END
Go


-- Referente a c) e d) - Impedir que um aluno se increva em dois cursos diferentes num mesmo ano lectivo ou em mais do que 35 ECTS por semestre
Go
Create Trigger tr_InscriçãoAluno_LimiteECTS_INSTEADOF_INSERT ON Inscrição INSTEAD OF INSERT AS
BEGIN
	Declare @ID_Aluno smallint, @AnoLectivoActual nchar(10)

	SET @AnoLectivoActual = (Select AnoLectivo From inserted)
	SET @ID_Aluno = (Select ID_Aluno from inserted)

	Declare @Nr_Aluno smallint, @ID_UCC smallint, @AnoLectivo nchar(10), @Data_Inscricao date
		IF EXISTS (Select * From Inscrição Where @Nr_Aluno = @ID_Aluno) AND EXISTS (Select * From Inscrição Where AnoLectivo = @AnoLectivoActual)
			BEGIN	
				IF(Select Distinct C.ID_Curso From Cursos C 
				JOIN UC_Cursos UCC on C.ID_Curso = UCC.ID_Curso 
				JOIN Inscrição I on UCC.ID_UC_Curso = I.ID_UC_Curso 
				Where I.ID_Aluno = @ID_Aluno) != (Select C.ID_Curso From Cursos C JOIN UC_Cursos UCC ON C.ID_Curso = UCC.ID_Curso JOIN inserted I ON I.ID_UC_Curso = UCC.ID_UC_Curso)
					BEGIN
					PRINT 'Um aluno apenas pode estar inscrito num curso num ano lectivo!!'
					END
				ELSE
					BEGIN
						IF(Select SUM(ECTS) From UnidadeCurricular UC JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC JOIN Inscrição I ON I.ID_UC_Curso = UCC.ID_UC_Curso
						Where I.AnoLectivo = @AnoLectivoActual AND I.ID_Aluno = @ID_Aluno AND UC.Semestre =
						(Select Semestre From UnidadeCurricular UC JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC JOIN inserted I ON I.ID_UC_Curso = UCC.ID_UC_Curso 
						Where UCC.ID_UC_Curso = I.ID_UC_Curso)) > 35.0
							BEGIN
								PRINT 'O Aluno Nr. ' +Convert(nchar(10),@ID_Aluno)+ ' atingiu o número máximo de créditos por semestre!! Limite 35 ECTS!!'
							END
						ELSE
							BEGIN
							SET @Nr_Aluno = (Select ID_Aluno From inserted)
							SET @ID_UCC = (Select ID_UC_Curso From inserted)
							SET @AnoLectivo = (Select AnoLectivo From inserted)
							SET @Data_Inscricao = (Select Data_Inscrição From inserted)
							Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição)
							Values(@Nr_Aluno,@ID_UCC,@AnoLectivo,@Data_Inscricao)
							END
				END
			END
		ELSE
			BEGIN
				SET @Nr_Aluno = (Select ID_Aluno From inserted)
				SET @ID_UCC = (Select ID_UC_Curso From inserted)
				SET @AnoLectivo = (Select AnoLectivo From inserted)
				SET @Data_Inscricao = (Select Data_Inscrição From inserted)
				Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição)
				Values(@Nr_Aluno,@ID_UCC,@AnoLectivo,@Data_Inscricao)
			END
END
Go

-- Referente a h) 
Go
Create Trigger tr_AvaliaçãoSincronizada_AFTER_insert ON Avaliação_P AFTER INSERT AS
BEGIN
	Insert into Avaliação_Sincronizada (ID_Avaliação, ID_Questão, Avaliação, Horas_Trabalho_Estudo, Data_Avaliação)
	Select * From inserted;
END
Go
select * from Avaliação_Sincronizada
------------------------------------------------------------------------------------------------
--3 - Views

--1.
Go
Create View view#01
AS
Select distinct ID_Questão as 'Parâmetros de Avaliação', Questão 'Descrição do Parâmetro' From Questões
Go

--2.
Go
Create View view#02
AS
Select Distinct C.Descrição as 'Curso', UC.Descrição as 'Unidade Curricular' From UnidadeCurricular UC 
JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Group by C.Descrição, UC.Descrição
Go

--3.
Go
Create View view#03
AS
Select Distinct C.Descrição as 'Curso', UC.Descrição as 'Unidade Curricular', D.Primeiro_Nome+D.Ultimo_Nome as 'Docente' From UnidadeCurricular UC 
JOIN UC_Cursos UCC ON UC.ID_UC = UCC.ID_UC
JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso
JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Group by C.Descrição, UC.Descrição, D.Primeiro_Nome+D.Ultimo_Nome 
Go

--4.
Go
Create View view#04
AS
Select UC.Descrição, COUNT(I.ID_Inscrição) as 'Total Inscritos' From Inscrição I 
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Where I.AnoLectivo = '2015-2016'
Group by UC.Descrição, UCC.ID_Curso
Go

--5.
Go
Create View view#05
AS
Select C.Descrição, COUNT(A.Avaliação) 'Total de Avaliações Obtidas' From Avaliações A 
JOIN Inscrição I ON I.ID_Inscrição = A.ID_Inscrição
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
Where I.AnoLectivo = '2015-2016'
Group by C.Descrição
Go

--6.
Go
Create View view#06
AS
Select UC.Descrição, COUNT(AP.Avaliação) as 'Total Avaliações Obtidas',(COUNT(Distinct A.ID_Aluno)*COUNT(Distinct AP.ID_Questão))-COUNT(AP.ID_Avaliação)'Total em Falta' From Avaliações AP
JOIN Avaliações AV ON AP.ID_Avaliação = AV.ID_Avaliação
JOIN Inscrição I ON I.ID_Inscrição = AV.ID_Inscrição
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
JOIN Alunos A ON I.ID_Aluno = A.ID_Aluno
Group by UC.Descrição
Go

--7.
Go
Create View view#07
AS
Select D.Primeiro_Nome, D.Ultimo_Nome, AVG(A.Avaliação) as 'Média Avaliações Obtidas', 
UC.Descrição 'Responsável pela Unidade Curricular' From Avaliações A 
JOIN Avaliação_P AP ON A.ID_Avaliação = AP.ID_Avaliação
JOIN Inscrição I ON I.ID_Inscrição = A.ID_Inscrição
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN UnidadeCurricular UC ON UCC.ID_UC = UC.ID_UC
JOIN UC_Docentes UCD ON UCC.ID_UC_Curso = UCD.ID_UC_Curso
JOIN Docentes D ON UCD.ID_Docente = D.ID_Docente
Where AP.ID_Questão = 'P2.1' OR AP.ID_Questão = 'P2.2' OR AP.ID_Questão = 'P2.3' OR AP.ID_Questão = 'P2.4' 
OR AP.ID_Questão = 'P2.5' OR AP.ID_Questão = 'P2.6' OR AP.ID_Questão = 'P2.7' OR AP.ID_Questão = 'P2.8' 
OR AP.ID_Questão = 'P2.9'
Group by D.Primeiro_Nome, D.Ultimo_Nome, UC.Descrição
Go

--8.
Go
Create View view#08
AS
Select Q.ID_Questão From Avaliações A 
JOIN Avaliação_P AP ON A.ID_Avaliação = AP.ID_Avaliação
JOIN Questões Q ON AP.ID_Questão = Q.ID_Questão
JOIN Inscrição I ON I.ID_Inscrição = A.ID_Inscrição
JOIN UC_Cursos UCC ON I.ID_UC_Curso = UCC.ID_UC_Curso
JOIN Cursos C ON UCC.ID_Curso = C.ID_Curso
where Q.ID_Questão = MIN (AP.Avaliação) and Q.ID_Questão = MAX(AP.Avaliação)
Group by Q.ID_Questão
Go
