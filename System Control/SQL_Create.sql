Create Database Controlo_Assiduidade

USE Controlo_Assiduidade

-- funcionarios
Create Table Funcion�rios(
ID_Funcionario smallint IDENTITY(1,1),
Primeiro_Nome nchar (50),
Ultimo_Nome nchar (50),
Sexo nchar(1),
Data_Nascimento date,
Idade AS DATEDIFF(hour, Data_Nascimento, getdate()) / 8766, --8766 � o n�mero de horas em um ano (excepto bissextos) campo computado automaticamente
Data_Inicio_Actividade date,  -- para um registo de sistema autom�tico podia ser DEFAULT GetDate(),
Foto Varbinary(max),
CONSTRAINT PK_Funcionarios Primary Key (ID_Funcionario),
CONSTRAINT CK_Sexo Check (Sexo = 'M' OR Sexo = 'F'),
CONSTRAINT CK_Data_Nascimento Check (Year(Data_Nascimento)>1950 AND Year(Data_Nascimento)<Year(getdate())), 
CONSTRAINT CK_Data_Inicio_Act Check (Data_Inicio_Actividade >= DATEADD(YEAR, 18, Data_Nascimento) and  --s� se pode come�ar a trabalhar apartir dos 18 anos de idade
									(Datepart(weekday, Data_Inicio_Actividade)>1 and  Datepart(weekday, Data_Inicio_Actividade)<7) 
									and (Data_Inicio_Actividade != '2015-12-25') and (Data_Inicio_Actividade != '2016-02-09') and (Data_Inicio_Actividade != '2016-03-27'))
);
Select * From Funcion�rios

-- categoria profissional de um funcionario
Create Table CategoriaP(
ID_Categoria smallint IDENTITY(1,1),
Fun��o nchar(50),
CONSTRAINT PK_IDCat PRIMARY KEY (ID_Categoria)
);
Select * From CategoriaP

--inserir categorias de funcionarios
Create Table Categorias_Funcionarios(
ID_CF smallint IDENTITY(1,1),
ID_Categoria smallint NOT NULL,
ID_Funcionario smallint NOT NULL,
CONSTRAINT PK_IDCF PRIMARY KEY (ID_CF),
CONSTRAINT FK_IDCat Foreign Key (ID_Categoria) REFERENCES CategoriaP (ID_Categoria) ON UPDATE CASCADE,
CONSTRAINT FK_IDCat_Func Foreign Key (ID_Funcionario) REFERENCES Funcion�rios (ID_Funcionario) ON UPDATE CASCADE,
);
Select * From Categorias_Funcionarios

-- departamento/organiza��o do funcionario
Create Table Departamentos(
ID_Departamento smallint IDENTITY(1,1),
Nome_Departamento nchar(50), 
CONSTRAINT PK_IDDep PRIMARY KEY (ID_Departamento),
);
Select * From Departamentos

-- tabela que interliga os departamentos com os respectivos funcion�rios
Create Table Departamentos_Funcionarios(
ID_DF smallint IDENTITY(1,1), 
ID_Funcionario smallint NOT NULL,
ID_Departamento smallint NOT NULL,
CONSTRAINT PK_ID_DF PRIMARY KEY (ID_DF),
CONSTRAINT FK_IDFuncDep Foreign Key (ID_Funcionario) REFERENCES Funcion�rios (ID_Funcionario)ON UPDATE CASCADE,
CONSTRAINT FK_IDDep Foreign Key (ID_Departamento) REFERENCES Departamentos (ID_Departamento) ON UPDATE CASCADE,
);
Select * From Departamentos_Funcionarios

--hor�rios (tipos)
Create Table Hor�rios(
ID_Tipo_Horario smallint, 
Descri��o nchar(100),
CONSTRAINT PK_Horarios Primary Key (ID_Tipo_Horario)
);
Select * From Hor�rios

-- exe��o de cada funcionario (f�rias ou dispensas)
Create Table Exce��o(
ID_Excecao smallint IDENTITY(1,1),
ID_Funcionario smallint NOT NULL,
Data_Inicio datetime NOT NULL,
Data_Fim datetime NOT NULL,
Tipo nchar(50), 
CONSTRAINT PK_Exce��o Primary Key (ID_Excecao),
CONSTRAINT FK_IDFuncExc Foreign Key (ID_Funcionario) REFERENCES Funcion�rios (ID_Funcionario),
CONSTRAINT CK_Excecao Check(Tipo IN ('F�rias','Dispensa','Reuni�o de Trabalho')),
CONSTRAINT CK_Dura��o Check((Data_Fim >= Data_Inicio) and ((Year(Data_Inicio)>1950) and (Year(Data_Fim)>1950)) and 
							(Datepart(weekday, Data_Inicio)>1 and  Datepart(weekday, Data_Fim)<7) and (Data_Inicio != '2015-12-25') 
							 and (Data_Inicio != '2016-02-09') and (Data_Inicio != '2016-03-27') and 
							(Datepart(weekday, Data_Fim)>1 and  Datepart(weekday, Data_Fim)<7) and (Data_Fim != '2015-12-25') 
							 and (Data_Fim != '2016-02-09') and (Data_Fim != '2016-03-27'))
);
Select * From Exce��o

-- regista os funcionarios com os tipos de horarios existentes
Create Table Hor�rios_Funcion�rios(
ID_HorarioFuncionario smallint IDENTITY(1,1),
ID_Funcionario smallint NOT NULL,
ID_Tipo_Horario smallint NOT NULL,
Hora_Entrada_Manha time DEFAULT '08:00', --periodo normal de funcionamento entrada (8h)
Hora_Saida_Manha time,
Hora_Entrada_Tarde time,
Hora_Saida_Tarde time DEFAULT '20:00',   --periodo normal de funcionamento saida (20h)
CONSTRAINT PK_HF Primary Key (ID_HorarioFuncionario),
CONSTRAINT FK_ID_Horario_Funcionario Foreign Key (ID_Funcionario) REFERENCES Funcion�rios (ID_Funcionario),
CONSTRAINT FK_TipoHorario Foreign Key (ID_Tipo_Horario) REFERENCES Hor�rios (ID_Tipo_Horario) ON DELETE CASCADE ON UPDATE CASCADE
);
Select * From Hor�rios_Funcion�rios

-- faltas de cada funcionario
Create Table Faltas(
ID_Falta smallint IDENTITY(1,1),
ID_Funcionario smallint NOT NULL,
Data date,
CONSTRAINT PK_IDFalta Primary Key (ID_Falta),
CONSTRAINT FK_IDFuncFalta Foreign Key (ID_Funcionario) REFERENCES Funcion�rios (ID_Funcionario),
CONSTRAINT CK_Data Check(Year(Data)>1950 and (Datepart(weekday, Data)>1 and Datepart(weekday, Data)<7) 
						 and (Data != '2015-12-25')  and (Data != '2016-02-09') and (Data != '2016-03-27'))
);
Select * From Faltas

-- justifica��o de cada funcionario
Create Table Justifica��es(
ID_Justificacao smallint IDENTITY(1,1),
ID_Falta smallint NOT NULL,
Data datetime,
Observa��o nchar(100),
CONSTRAINT PK_IDJustificacao Primary Key (ID_Justificacao),
CONSTRAINT FK_IDFalta Foreign Key (ID_Falta) REFERENCES Faltas (ID_Falta) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT CK_Data_Just Check(Year(Data)>1950 and (Datepart(weekday, Data)>1 and Datepart(weekday, Data)<7) 
						 and (Data != '2015-12-25')  and (Data != '2016-02-09') and (Data != '2016-03-27'))
);
Select * From Justifica��es

-- assiduidade de um funcionario
Create Table Assiduidade(
ID_Assiduidade smallint IDENTITY(1,1),
ID_Funcionario smallint NOT NULL,
ID_Excecao smallint,
ID_Falta smallint,
ID_HorarioFuncionario smallint NOT NULL, --tipo de horario que o funcionario tem 
ID_Tipo nchar(6) NOT NULL,               --periodo de trabalho (Manha ou Tarde)
Hora_Entrada time,
Hora_Saida time,
Dura��oHorasTrabalho AS (DATEDIFF(HOUR,Hora_Entrada,Hora_Saida)), --campo computado automaticamente
Data datetime NOT NULL,
CONSTRAINT PK_Assiduidade Primary Key (ID_Assiduidade),
CONSTRAINT FK_ID_Funcionario_Assiduidade Foreign Key (ID_Funcionario) REFERENCES Funcion�rios (ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_ID_HorarioFuncionario Foreign Key (ID_HorarioFuncionario) REFERENCES Hor�rios_Funcion�rios (ID_HorarioFuncionario) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDExc Foreign Key (ID_Excecao) REFERENCES Exce��o (ID_Excecao) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_ID_Falta Foreign Key (ID_Falta) REFERENCES Faltas (ID_Falta) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT CK_Tipo_Assiduidade Check (ID_Tipo IN ('Manha','Tarde')),
CONSTRAINT CK_Data_Assiduidade Check((Datepart(weekday, Data)>1 and  Datepart(weekday, Data)<7) and (Data != '2015-12-25') 
							         and (Data != '2016-02-09') and (Data != '2016-03-27')), 
									 --s� permite registo de assiduidade de dias �teis (s�bado e domingo n�o s�o permitidos) nem as datas correspondentes a alguns feriados, 
									 --os feriados ser�o adicionados neste campo e ir�o depender de outros fatores, nomeadamente feriados municipais e a localiza��o distrito/concelho do departamento)  
CONSTRAINT CK_Horas Check(DATEPART(HOUR,Hora_Entrada)>=8 and DATEPART(HOUR,Hora_Saida)<=20), --n�o h� registo de assiduidade fora do periodo normal de funcionamento
);
Select * From Assiduidade

-------------------------------------------------------------------------------------
--verifica exist�ncias de check's, constraint's, tipos campos, default's...
Exec sp_help Assiduidade --por ex. da tabela Assiduidade
-------------------------------------------------------------------------------------
delete from Assiduidade --apaga todos os valores da tabela assiduidade
-------------------------------------------------------------------------------------
Select 
--mostra o numero de dias de ferias que cada funcionario tem
SELECT ID_Funcionario,Data_Inicio, Data_Fim, Tipo,  
(DATEDIFF(DAY,Data_Inicio,Data_Fim)) as N�mero_Dias
From Exce��o
Where Tipo = 'F�rias' 
Group by ID_Funcionario, Data_Inicio, Data_Fim, Tipo
-------------------------------------------------------------------------------------
--mostra o numero de horas de dispensas que cada funcionario tem
SELECT ID_Funcionario,Data_Inicio, Data_Fim, Tipo,  
(DATEDIFF(MINUTE,Data_Inicio,Data_Fim)) as Dura��o_Em_Minutos
From Exce��o
Where Tipo = 'Dispensa'
Group by ID_Funcionario, Data_Inicio, Data_Fim, Tipo

-------------------------------------------------------------------------------------
--VIEWS
--(1)calcula o numero de horas de um funcionario consoante a hora de entrada e saida
CREATE VIEW HorasTrabalhoMensais 
AS
Select Distinct ID_Funcionario, sum(DATEDIFF(HOUR,Hora_Entrada,Hora_Saida)) as 'Horas de Trabalho Mensais' 
From Assiduidade
Where datepart(month,Data)=11 --exemplo para o m�s de Novembro (se fosse para dezembro seria Where datepart(month,Data)=12)
Group By ID_Funcionario

-------------------------------------------------------------------------------------
--(2)final de cada m�s listar as aus�ncias, faltas e dispensas pode cada funcion�rio
CREATE VIEW ListarFaltasExce��esMensais
AS
Select Distinct E.ID_Funcionario,  F.Data as 'Faltas', E.Data_Inicio as 'Data Inicio da Exce��o', E.Data_Fim as 'Data Fim da Exce��o', E.Tipo as 'Tipo de Exce��o'
From Exce��o E JOIN
Faltas F ON F.ID_Funcionario = E.ID_Funcionario
Where datepart(month,F.Data)=11 and datepart(month,E.Data_Inicio)=11 and datepart(month,E.Data_Fim)=11 --exemplo para o mes de novembro

-------------------------------------------------------------------------------------
--(3)listar dados de todos os funcionarios e os seus tipo(s) de horario(s)
Create View Hor�riosInfoFuncion�rios 
AS
--lista dados de identifica��o de um determinado funcionario e o seu tipo de horario
Select F.ID_Funcionario, HF.ID_Tipo_Horario, F.Primeiro_Nome, F.Ultimo_Nome,F.Sexo,F.Data_Inicio_Actividade,
F.Idade, F.Data_Nascimento, F.Foto
From Hor�rios_Funcion�rios HF JOIN Funcion�rios F
ON HF.ID_Funcionario = F.ID_Funcionario
Where F.ID_Funcionario = 4 --por ex. Funcion�rio com o ID=1

--Se quisessemos ter uma view para todos os funcion�rios, retiravamos a cla�sula where 
--listava os dados de identifica��o de todos os funcionarios e os seus tipo(s) de horario(s)
Select F.ID_Funcionario, HF.ID_Tipo_Horario, F.Primeiro_Nome, F.Ultimo_Nome,F.Sexo,F.Data_Inicio_Actividade,
F.Data_Nascimento,F.Foto
From Hor�rios_Funcion�rios HF JOIN Funcion�rios F
ON HF.ID_Funcionario = F.ID_Funcionario
-------------------------------------------------------------------------------------
--(4)listar as regras parametrizadas no suporte � aplica��o
--lista por exemplo os tipos de hor�rios que est�o ativos e as horas definidas dos mesmos,
--para funcion�rios do sexo Masculino 
CREATE VIEW ListarRegrasAplica��o1
AS
Select distinct H.ID_Tipo_Horario, H.Descri��o, HF.Hora_Entrada_Manha, HF.Hora_Saida_Manha, HF.Hora_Entrada_Tarde, HF.Hora_Saida_Tarde 
From Hor�rios H
JOIN
Hor�rios_Funcion�rios HF ON H.ID_Tipo_Horario = HF.ID_Tipo_Horario
JOIN 
Funcion�rios F ON F.ID_Funcionario = HF.ID_Funcionario
Where F.Sexo = 'M'

-------------------------------------------------------------------------------------
--(5)outras consideradas como necess�rias ao desempenho da aplica��o
--verifica se o limite de 4 horas das exce��es (240min = 4 horas) foi ou n�o ultrapassado de todos os funcion�rios
CREATE VIEW ListarRegrasAplica��o2
AS
Select ID_Funcionario, (SUM(DATEDIFF(MINUTE,Data_Inicio,Data_Fim))) as 'TotalMinutos', 
(IIF ( (SUM(DATEDIFF(MINUTE,Data_Inicio,Data_Fim))) > 240, 'Limite Ultrapassado', 'Limite N�o Ultrapassado' )) as LimiteDispensa
From Exce��o 
Where Tipo = 'Dispensa'
Group by ID_Funcionario, Data_Inicio, Data_Fim

--verifica se a data do registo de assiduidade di�rio coincide entre a Data_Inicio e Data_Fim das Exce��es
CREATE VIEW ListarRegrasAplica��o3
AS
Select Distinct A.ID_Funcionario, A.Data, 
(IIF (A.Data between E.Data_Inicio and E.Data_Fim, 'Sim', 'N�o' )) as Verifica��o
From Assiduidade A JOIN Exce��o E 
ON E.ID_Funcionario = A.ID_Funcionario