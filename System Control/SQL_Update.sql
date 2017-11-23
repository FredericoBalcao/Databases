USE Controlo_Assiduidade
Go

--inserir funcionarios
Select * From Funcionários

-- colocar foto como tipo Single_Blob 
--Select 1,1,'João','Costa','M','1982-11-05','2011-08-02', BulkColumn
--FROM Openrowset( Bulk 'C:\delete\a.png', Single_Blob) as Foto

INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('João','Costa','M','1982-11-05','2011-08-02',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('Miguel','Azevedo','M','1971-09-12','2013-02-11',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('Fábio','Hortigão','M','1989-09-11','2014-10-20',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('Joana','Maria','F','1990-05-19','2015-06-22',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('Raquel','Sofia','F','1983-09-10','2013-10-10',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('Rodrigo','Mendes','M','1956-07-15','2012-06-04',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('António','Sousa','M','1971-02-10','2011-10-12',0);
INSERT INTO Funcionários (Primeiro_Nome,Ultimo_Nome,Sexo,
						  Data_Nascimento,Data_Inicio_Actividade,Foto) 
VALUES('Susana','Garcia','F','1991-06-05','2010-04-15',0);

--inserir categoria profissional para cada funcionario
Select * From CategoriaP

INSERT INTO CategoriaP (Função) 
VALUES('Administrativo');
INSERT INTO CategoriaP (Função) 
VALUES('Auxiliar Limpeza');
INSERT INTO CategoriaP (Função) 
VALUES('Professor');
INSERT INTO CategoriaP (Função) 
VALUES('Técnico Informático');
INSERT INTO CategoriaP (Função) 
VALUES('Diretor');
INSERT INTO CategoriaP (Função) 
VALUES('Cozinheiro');
INSERT INTO CategoriaP (Função) 
VALUES('Tesoureiro');

--inserir funcionarios em determinadas categorias profissionais
Select * From Categorias_Funcionarios

INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(1,1);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(3,2);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(4,3);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(7,4);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(2,5);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(1,6);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(5,7);
INSERT INTO Categorias_Funcionarios (ID_Categoria,ID_Funcionario) 
VALUES(6,8);
-- inserir departamentos por exemplo para escolas
Select * From Departamentos

INSERT INTO Departamentos (Nome_Departamento) 
VALUES('ESTGP');
INSERT INTO Departamentos (Nome_Departamento) 
VALUES('IST');
INSERT INTO Departamentos (Nome_Departamento) 
VALUES('FCT-UNL');
INSERT INTO Departamentos (Nome_Departamento) 
VALUES('ISEL');
INSERT INTO Departamentos (Nome_Departamento) 
VALUES('ESEP');

-- inserir funcionarios em departamentos
Select * From Departamentos_Funcionarios

INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(1,4);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(2,5);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(3,1);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(4,3);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(5,1);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(6,2);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(7,2);
INSERT INTO Departamentos_Funcionarios (ID_Funcionario,ID_Departamento) 
VALUES(8,4);
--inserir Horários para funcionários
Select * From Horários

INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(1,'Horário Flexível');
INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(2,'Horário Rígido');
INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(3,'Horário Desfasado');
INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(4,'Jornada Contínua');
INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(5,'Trabalho por Turnos');
INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(6,'Horário Específico');
INSERT INTO Horários (ID_Tipo_Horario,Descrição) 
VALUES(7,'Isenção Horário');

--inserir faltas de funcionários
Select * From Faltas
--faltas no mês de novembro
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(1,'2015-11-16');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(2,'2015-11-03');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(3,'2015-11-30');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(4,'2015-11-12');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(5,'2015-11-04');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(6,'2015-11-09');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(8,'2015-11-05');
--faltas no mês de dezembro
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(4,'2015-12-02');
INSERT INTO Faltas (ID_Funcionario,Data) 
VALUES(6,'2015-12-04');

--inserir justificações das faltas
Select * From Justificações
--justificações das faltas do mês de novembro
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(1,'2015-11-17','Doença');
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(2,'2015-11-04','Exame Médico Desportivo'); 
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(3,'2015-12-01','Doença'); 
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(4,'2015-11-13','Falecimento de um Familiar'); 
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(5,'2015-11-05','Exame Médico Desportivo'); 
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(6,'2015-11-10','Doença'); 
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(7,'2015-11-06','Doença'); 
--justificações das faltas do mês de dezembro
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(8,'2015-12-03','Doença'); 
INSERT INTO Justificações (ID_Falta,Data,Observação) 
VALUES(9,'2015-12-04','Exame Médico'); 

--inserir exceções de funcionários
Select * From Exceção
--dispensas e reuniões de trabalho
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(1,'2015-11-24 00:00:00.000','2015-11-24 00:40:00.000','Dispensa'); --40min
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(2,'2015-11-23 00:00:00.000','2015-11-23 00:30:00.000','Dispensa'); --30min
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(3,'2015-12-02 00:00:00.000','2015-12-02 00:15:00.000','Dispensa'); --15min
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(4,'2015-11-11 00:00:00.000','2015-11-11 00:35:00.000','Dispensa');  --35min
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(5,'2015-11-02 00:09:00.000','2015-11-02 01:00:00.000','Reunião de Trabalho'); --reuniao trabalho 1h
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo)
VALUES(6,'2015-11-30 00:09:00.000','2015-11-30 02:00:00.000','Reunião de Trabalho'); --reuniao trabalho 2h
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(7,'2015-11-25 00:09:00.000','2015-11-25 01:30:00.000','Reunião de Trabalho'); --reuniao trabalho 1h.30
--férias
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(1,'2015-06-11 00:00:00.000','2015-06-18 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(2,'2015-08-12 00:00:00.000','2015-08-19 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(3,'2015-03-16 00:00:00.000','2015-03-23 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(4,'2015-06-30 00:00:00.000','2015-07-07 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(5,'2015-06-22 00:00:00.000','2015-06-29 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(6,'2015-09-21 00:00:00.000','2015-09-28 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(7,'2015-10-19 00:00:00.000','2015-10-26 00:00:00.000','Férias');
INSERT INTO Exceção (ID_Funcionario,Data_Inicio,Data_Fim,Tipo) 
VALUES(8,'2015-11-16 00:00:00.000','2015-11-23 00:00:00.000','Férias');


--atribui tipos de horarios a funcionarios (o mesmo funcionario pode mudar de modalidade de horario)
Select * From Horários_Funcionários
--estes funcionarios tem o horario flexivel 
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Tarde) 
VALUES(1,1,'08:00','20:00');
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Tarde) 
VALUES(2,1,'08:00','20:00');
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Tarde) 
VALUES(3,1,'08:00','20:00');
--estes funcionarios tem o horario rigido
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Manha,Hora_Entrada_Tarde,Hora_Saida_Tarde) 
VALUES(4,2,'09:00','13:00','14:00','18:00');
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Manha,Hora_Entrada_Tarde,Hora_Saida_Tarde) 
VALUES(5,2,'09:00','13:00','14:00','18:00');
--este funcionario tem horario do tipo jornada continua
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Manha,Hora_Entrada_Tarde,Hora_Saida_Tarde) 
VALUES(6,4,'08:00','12:30','13:00','20:00');
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Manha,Hora_Entrada_Tarde,Hora_Saida_Tarde) 
VALUES(7,2,'09:00','13:00','14:00','18:00');
INSERT INTO Horários_Funcionários (ID_Funcionario,ID_Tipo_Horario,Hora_Entrada_Manha,Hora_Saida_Tarde) 
VALUES(8,1,'08:00','20:00');

--inserir assiduidade dos funcionarios --colocados como teste para assiduidade
Select * From Assiduidade
--Registo assiduidade desde 2015-11-01
--Funcionario = 1
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:03','12:42','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:51','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:53','17:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:19','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:51','18:55','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:12','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:11','12:42','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:51','18:53','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:05','12:12','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:25','19:13','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:09','13:45','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:57','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:17','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:57','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:05','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:10','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(1,1,1,'Manha','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(1,1,1,'Tarde','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:51','18:51','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','13:55','18:56','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:56','18:58','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:08','12:41','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:59','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:01','12:41','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:19','12:12','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','19:14','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,1,'Manha','08:18','12:40','2015-11-24');  --DISPENSA 40MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,1,'Tarde','13:52','18:20','2015-11-24');  --DISPENSA 40MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:01','12:47','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:59','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:01','12:47','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:59','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:05','12:12','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:56','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:09','12:56','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:54','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:15','12:44','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:16','18:51','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Manha','08:18','12:41','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:19','18:55','2015-12-04');

--Funcionario = 2
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:03','12:41','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(2,1,2,'Manha','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(2,1,2,'Tarde','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:18','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:57','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:09','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:06','12:41','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:14','18:12','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:15','12:41','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:54','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:10','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:51','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:17','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:51','18:57','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:30','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:51','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:13','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:55','18:56','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:12','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','18:58','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:14','18:51','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:56','19:09','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,2,'Manha','08:01','12:47','2015-11-23'); --DISPENSA 30MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,2,'Tarde','13:52','18:59','2015-11-23'); --DISPENSA 30MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:41','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:59','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:46','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:54','18:58','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:47','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:59','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:05','12:12','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(1,1,'Tarde','13:52','18:56','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:09','12:47','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:10','18:58','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:45','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:54','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Manha','08:01','12:41','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(2,1,'Tarde','13:52','18:56','2015-12-04');

--Funcionario = 3
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:09','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:06','12:41','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:14','18:12','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:15','12:41','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:54','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:47','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:59','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:09','12:41','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:56','18:57','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:46','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:54','18:58','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(3,1,3,'Manha','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(3,1,3,'Tarde','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:47','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:59','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,3,'Manha','08:01','12:47','2015-12-02'); --DISPENSA 15MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,3,'Tarde','13:52','18:59','2015-12-02'); --DISPENSA 15MIN 
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:45','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:54','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Manha','08:01','12:41','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(3,1,'Tarde','13:52','18:56','2015-12-04');

--Funcionario = 4
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,1,'Manha','08:01','12:45','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,1,'Tarde','13:52','18:54','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,1,'Manha','08:01','12:41','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,1,'Tarde','13:52','18:56','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,4,'Manha','08:03','12:41','2015-11-11'); --DISPENSA 35MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,4,'Tarde','13:56','18:57','2015-11-11'); --DISPENSA 35MIN
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(4,2,4,'Manha','2015-11-12'); 
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(4,2,4,'Tarde','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(4,2,8,'Manha','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(4,2,8,'Tarde','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Manha','08:01','12:47','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(4,2,'Tarde','13:52','18:59','2015-12-04');

--Funcionario = 5
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,5,'Manha','08:03','12:41','2015-11-02'); --REUNIAO TRABALHO 1H
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,5,'Tarde','13:56','16:09','2015-11-02'); --REUNIAO TRABALHO 1H
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(5,2,5,'Manha','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(5,2,5,'Tarde','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:15','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:54','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:10','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:51','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,4,'Manha','08:03','12:41','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,4,'Tarde','13:56','18:57','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,4,'Manha','08:03','12:41','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,4,'Tarde','13:56','18:57','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Manha','08:01','12:47','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(5,2,'Tarde','13:52','18:59','2015-12-04');

--Funcionario = 6 
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(6,4,6,'Manha','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(6,4,6,'Tarde','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:15','12:41','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:54','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:10','12:41','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:51','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,6,'Manha','08:01','12:47','2015-11-30'); --REUNIAO TRABALHO 2H
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,6,'Tarde','13:52','18:59','2015-11-30'); --REUNIAO TRABALHO 2H
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:01','12:47','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:52','18:59','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Manha','08:15','12:41','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(6,4,'Tarde','13:56','18:54','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(6,4,9,'Manha','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(6,4,9,'Tarde','2015-12-04');

--Funcionario = 7
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,7,'Manha','08:01','12:47','2015-11-25'); --REUNIAO TRABALHO 1H.30
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Excecao,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,7,'Tarde','13:52','18:59','2015-11-25'); --REUNIAO TRABALHO 1H.30
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Manha','08:01','12:47','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(7,2,'Tarde','13:52','18:59','2015-12-04');

--Funcionario = 8
--mes de novembro e dezembro
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(8,1,7,'Manha','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Falta,ID_Tipo,Data) 
VALUES(8,1,7,'Tarde','2015-11-05');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-06');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-09');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-10');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-11');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-12');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-13');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-16');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-17');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-11-18');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-19');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-20');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-23');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-24');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-25');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-26');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-27');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-11-30');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-12-01');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-12-02');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:03','12:41','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:56','18:57','2015-12-03');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Manha','08:01','12:47','2015-12-04');
INSERT INTO Assiduidade (ID_Funcionario,ID_HorarioFuncionario,ID_Tipo,Hora_Entrada,Hora_Saida,Data) 
VALUES(8,1,'Tarde','13:52','18:59','2015-12-04');