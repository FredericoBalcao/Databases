Use [Avaliação_Pedagógica ]

Select * From Alunos
Select * From Cursos
Select * From UnidadeCurricular
Select * From UC_Cursos
Select * From UC_Docentes
Select * From Docentes
Select * From Questões
Select * From Inscrição
Select * From Avaliação_P
Select * From Avaliações

--Alunos de Engenharia Informática - 1ºano-1ºsemestre (Ano 2015-2016)
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18017,'André','Santos')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18059,'Eduardo','Silveirinha')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18015,'Fabien','Santos')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18014,'José','Carmo')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18001,'João','Pinheiro')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18064,'João','Esteves')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18018,'Nuno','Pires')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18067,'Pedro','Nunes')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18013,'Luis','Carvalho')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18058,'Rafael','Dias')

--Alunos de Gestão - 1ºano-1ºsemestre (Ano 2015-2016)
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18021,'Andreia','Fernandes')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18025,'Fábio','Candeias')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18068,'Ana','Lucas')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18022,'Ana','Borges')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18031,'Miguel','Pinheiro')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18028,'Marta','Coelho')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18032,'Pedro','Nunes')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (18019,'Carolina','Correia')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (17866,'Ana','Neto')
Insert into Alunos (ID_Aluno, Primeiro_Nome, Ultimo_Nome)
Values (17667,'Filipa','Orvalho')

--Cursos
Insert into Cursos (ID_Curso, Descrição)
Values (9119,'Engenharia Informática')
Insert into Cursos (ID_Curso, Descrição)
Values (9147,'Gestão')

--Unidades Curriculares de dois cursos (Eng.Informática e Gestão) (1ºAno-1ºSemestre)
Insert into UnidadeCurricular (ID_UC, Descrição, T, TP, L, Semestre, Ano, ECTS)
Values (209501,'Sistemas Digitais',30,15,15,'1ºSemestre','1ºAno',7.5)
Insert into UnidadeCurricular (ID_UC, Descrição, T, L,Semestre, Ano, ECTS)
Values (209502,'Introdução à Programação',30,30,'1ºSemestre','1ºAno',7.5)
Insert into UnidadeCurricular (ID_UC, Descrição, T, L, Semestre, Ano, ECTS)
Values (209503,'Análise Matemática I',30,30,'1ºSemestre','1ºAno',5)
Insert into UnidadeCurricular (ID_UC, Descrição, TP,Semestre, Ano, ECTS)
Values (209544,'Álgebra Linear e Geometria Analítica',60,'1ºSemestre','1ºAno',5)
Insert into UnidadeCurricular (ID_UC, Descrição, T, TP, L,Semestre, Ano, ECTS)
Values (209545,'Física Geral',30,30,15,'1ºSemestre','1ºAno',5)

Insert into UnidadeCurricular (ID_UC, Descrição, T, TP, OT,Semestre, Ano, ECTS)
Values (201400,'Contabilidade Financeira I',30,30,8,'1ºSemestre','1ºAno',6)
Insert into UnidadeCurricular (ID_UC, Descrição, T, TP, OT,Semestre, Ano, ECTS)
Values (201452,'Introdução à Gestão',30,30,4,'1ºSemestre','1ºAno',6)
Insert into UnidadeCurricular (ID_UC, Descrição, TP, OT,Semestre, Ano, ECTS)
Values (201453,'Métodos Quantitativos',60,8,'1ºSemestre','1ºAno',6)
Insert into UnidadeCurricular (ID_UC, Descrição, T, TP, OT,Semestre, Ano, ECTS)
Values (201454,'Economia I',30,30,8,'1ºSemestre','1ºAno',6)
Insert into UnidadeCurricular (ID_UC, Descrição, T, TP, OT,Semestre, Ano, ECTS)
Values (201404,'Introdução ao Direito',30,30,4,'1ºSemestre','1ºAno',6)

--Unidades Curriculares correspondentes a cada curso
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (1,201400,9147)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (2,201404,9147)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (3,201452,9147)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (4,201453,9147)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (5,201454,9147)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (6,209501,9119)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (7,209502,9119)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (8,209503,9119)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (9,209544,9119)
Insert into UC_Cursos (ID_UC_Curso, ID_UC, ID_Curso)
Values (10,209545,9119)

--Docentes leccionam determinadas unidades curriculares
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('Nuno','Tavares')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('Ana','Fino')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('António','Brites')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('Cristina','Dias')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('José','Serafim')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('Sérgio','Correia')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('Mónica','Martins')
Insert into Docentes (Primeiro_Nome,Ultimo_Nome)
Values('João','Miranda')

----Unidades Curriculares correspondentes a cada docente
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (1,1)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (2,2)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (3,3)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (4,4)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (5,5)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (6,6)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (7,7)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (8,8)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (4,9)
Insert into UC_Docentes (ID_Docente, ID_UC_Curso)
Values (7,10)

--Questões de Avaliação Pedagógica
--em relação à unidade curricular
Insert into Questões (ID_Questão,Questão)
Values ('P1.1','Articulação entre os diversos tipos de aulas (T,TP,L,Sem,TC,OT)')
Insert into Questões (ID_Questão,Questão)
Values ('P1.2','Pertinência das matérias em função da área do curso')
Insert into Questões (ID_Questão,Questão)
Values ('P1.3','Adequação do método de avaliação ao conteúdo da Unidade Curricular')
Insert into Questões (ID_Questão,Questão)
Values ('P1.4','O número médio de horas semanais despendido nesta Unidade Curricular em trabalho+estudo para 
		além das aulas (número de horas)')
		Insert into Questões (ID_Questão,Questão)
Values ('P1.5','Cumprimento total/parcial do programa (1 para total ou 5 para parcial)')
--em relação ao docente
Insert into Questões (ID_Questão,Questão)
Values ('P2.1','Clareza na transmissão/exposição das matérias')
Insert into Questões (ID_Questão,Questão)
Values ('P2.2','Disponibilidade para esclarecer dúvidas dos alunos')
Insert into Questões (ID_Questão,Questão)
Values ('P2.3','Capacidade para promover o interesse dos alunos')
Insert into Questões (ID_Questão,Questão)
Values ('P2.4','Segurança na exposição da matéria')
Insert into Questões (ID_Questão,Questão)
Values ('P2.5','Empenho no desenvolvimento do raciocínio e espírito crítico nos alunos')
Insert into Questões (ID_Questão,Questão)
Values ('P2.6','Materiais de apoio à unidade curricular disponibilizados pelo docente')
Insert into Questões (ID_Questão,Questão)
Values ('P2.7','Tempo de entrega dos resultados da avaliação')
Insert into Questões (ID_Questão,Questão)
Values ('P2.8','Pontualidade')
Insert into Questões (ID_Questão,Questão)
Values ('P2.9','Apreciação Global')

--Inscrições em Gestão 
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17667,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17667,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17667,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17667,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17667,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17866,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17866,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17866,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17866,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(17866,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18021,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18021,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18021,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18021,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18021,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18025,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18025,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18025,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18025,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18025,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18068,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18068,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18068,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18068,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18068,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18022,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18022,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18022,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18022,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18022,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18031,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18031,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18031,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18031,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18031,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18028,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18028,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18028,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18028,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18028,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18032,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18032,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18032,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18032,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18032,5,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18019,1,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18019,2,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18019,3,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18019,4,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18019,5,'2015-2016','2015-09-17', 'Activa')

--Inscrição em Eng.Informática
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18017,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18017,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18017,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18017,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18017,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18059,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18059,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18059,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18059,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18059,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18015,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18015,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18015,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18015,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18015,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18014,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18014,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18014,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18014,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18014,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18001,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18001,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18001,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18001,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18001,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18064,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18064,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18064,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18064,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18064,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18018,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18018,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18018,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18018,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18018,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18067,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18067,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18067,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18067,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18067,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18013,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18013,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18013,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18013,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18013,10,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18058,6,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18058,7,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18058,8,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18058,9,'2015-2016','2015-09-17', 'Activa')
Insert into Inscrição (ID_Aluno,ID_UC_Curso,AnoLectivo,Data_Inscrição, Estado)
Values(18058,10,'2015-2016','2015-09-17', 'Activa')

--Avaliações de cada questão para cada aluno (neste caso 100 alunos são 100 inscrições ao todo)
--Cada aluno avalia os parâmetros tanto da unidade curricular (P1) que se inscreveu como do docente (P2) que a leciona 
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',15,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

--inscrição 3
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',19,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

--inscrição 4
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',12,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

--5
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

--inscrição 6
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',22,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',4,'2015-11-27')

--inscrição 7
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',16,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

--inscrição 8
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')
--inscrição 9
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')
--inscrição 10
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')
--inscrição 11
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')
--inscrição 12
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.1',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.2',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.3',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Horas_Trabalho_Estudo,Data_Avaliação)
Values('P1.4',17,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P1.5',1,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.1',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.2',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.3',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.4',3,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.5',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.6',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.7',4,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.8',2,'2015-11-27')
Insert into Avaliação_P (ID_Questão,Avaliação,Data_Avaliação)
Values('P2.9',3,'2015-11-27')

--Avaliações de cada aluno pela sua inscrição e avaliação dada
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,1);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,2);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,3);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,4);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,5);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,6);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,7);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,8);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,9);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,10);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,11);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,12);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,13);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(1,14);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,15);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,16);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,17);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,18);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,19);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,20);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,21);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,22);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,23);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,24);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,25);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,26);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,27);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(2,28);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,29);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,30);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,31);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,32);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,33);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,34);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,35);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,36);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,37);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,38);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,39);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,40);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,41);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(3,42);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,43);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,44);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,45);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,46);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,47);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,48);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,49);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,50);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,51);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,52);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,53);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,54);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,55);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(4,56);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,57);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,58);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,59);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,60);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,61);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,62);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,63);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,64);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,65);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,66);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,67);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,68);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,69);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(5,70);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,71);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,72);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,73);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,74);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,75);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,76);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,77);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,78);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,79);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,80);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,81);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,82);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,83);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(6,84);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,85);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,86);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,87);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,88);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,89);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,90);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,91);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,92);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,93);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,94);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,95);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,96);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,97);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(7,98);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,99);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,100);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,101);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,102);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,103);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,104);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,105);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,106);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,107);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,108);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,109);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,110);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,111);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(8,112);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,113);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,114);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,115);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,116);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,117);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,118);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,119);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,120);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,121);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,122);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,123);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,124);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,125);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(9,126);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,127);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,128);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,129);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,130);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,131);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,132);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,133);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,134);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,135);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,136);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,137);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,138);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,139);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(10,140);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,141);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,142);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,143);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,144);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,145);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,146);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,147);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,148);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,149);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,150);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,151);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,152);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,153);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(11,154);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,155);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,156);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,157);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,158);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,159);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,160);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,161);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,162);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,163);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,164);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,165);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,166);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,167);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(12,168);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,169);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,170);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,171);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,172);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,173);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,174);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,175);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,176);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,177);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,178);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,179);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,180);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,181);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(13,182);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,183);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,184);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,185);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,186);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,187);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,188);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,189);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,190);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,191);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,192);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,193);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,194);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,195);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(14,196);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,197);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,198);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,199);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,200);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,201);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,202);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,203);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,204);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,205);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,206);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,207);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,208);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,209);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(15,210);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,211);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,212);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,213);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,214);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,215);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,216);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,217);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,218);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,219);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,220);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,221);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,222);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,223);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(16,224);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,225);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,226);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,227);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,228);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,229);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,230);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,231);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,232);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,233);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,234);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,235);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,236);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,237);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(17,238);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,239);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,240);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,241);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,242);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,243);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,244);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,245);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,246);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,247);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,248);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,249);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,250);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,251);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(18,252);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,253);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,254);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,255);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,256);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,257);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,258);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,259);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,260);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,261);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,262);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,263);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,264);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,265);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(19,266);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,267);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,268);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,269);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,270);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,271);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,272);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,273);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,274);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,275);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,276);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,277);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,278);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,279);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(20,280);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,281);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,282);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,283);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,284);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,285);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,286);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,287);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,288);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,289);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,290);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,291);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,292);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,293);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(21,294);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,295);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,296);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,297);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,298);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,299);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,300);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,301);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,302);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,303);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,304);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,305);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,306);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,307);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(22,308);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,309);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,310);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,311);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,312);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,313);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,314);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,315);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,316);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,317);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,318);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,319);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,320);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,321);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(23,322);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,323);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,324);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,325);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,326);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,327);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,328);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,329);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,330);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,331);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,332);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,333);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,334);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,335);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(24,336);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,337);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,338);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,339);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,340);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,341);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,342);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,343);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,344);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,345);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,346);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,347);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,348);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,349);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(25,350);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,351);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,352);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,353);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,354);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,355);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,356);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,357);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,358);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,359);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,360);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,361);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,362);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,363);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(26,364);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,365);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,366);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,367);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,368);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,369);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,370);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,371);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,372);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,373);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,374);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,375);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,376);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,377);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(27,378);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,379);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,380);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,381);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,382);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,383);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,384);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,385);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,386);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,387);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,388);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,389);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,390);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,391);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(28,392);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,393);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,394);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,395);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,396);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,397);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,398);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,399);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,400);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,401);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,402);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,403);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,404);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,405);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(29,406);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,407);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,408);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,409);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,410);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,411);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,412);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,413);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,414);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,415);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,416);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,417);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,418);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,419);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(30,420);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,421);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,422);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,423);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,424);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,425);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,426);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,427);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,428);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,429);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,430);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,431);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,432);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,433);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(31,434);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,435);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,436);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,437);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,438);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,439);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,440);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,441);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,442);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,443);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,444);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,445);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,446);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,447);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(32,448);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,449);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,450);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,451);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,452);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,453);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,454);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,455);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,456);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,457);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,458);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,459);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,460);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,461);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(33,462);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,463);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,464);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,465);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,466);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,467);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,468);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,469);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,470);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,471);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,472);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,473);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,474);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,475);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(34,476);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,477);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,478);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,479);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,480);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,481);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,482);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,483);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,484);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,485);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,486);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,487);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,488);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,489);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(35,490);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,491);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,492);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,493);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,494);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,495);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,496);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,497);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,498);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,499);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,500);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,501);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,502);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,503);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(36,504);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,505);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,506);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,507);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,508);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,509);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,510);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,511);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,512);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,513);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,514);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,515);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,516);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,517);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(37,518);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,519);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,520);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,521);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,522);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,523);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,524);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,525);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,526);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,527);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,528);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,529);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,530);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,531);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(38,532);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,533);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,534);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,535);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,536);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,537);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,538);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,539);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,540);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,541);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,542);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,543);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,544);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,545);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(39,546);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,547);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,548);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,549);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,550);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,551);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,552);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,553);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,554);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,555);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,556);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,557);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,558);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,559);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(40,560);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,561);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,562);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,563);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,564);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,565);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,566);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,567);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,568);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,569);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,570);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,571);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,572);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,573);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(41,574);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,575);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,576);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,577);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,578);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,579);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,580);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,581);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,582);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,583);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,584);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,585);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,586);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,587);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(42,588);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,589);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,590);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,591);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,592);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,593);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,594);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,595);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,596);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,597);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,598);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,599);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,600);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,601);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(43,602);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,603);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,604);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,605);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,606);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,607);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,608);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,609);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,610);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,611);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,612);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,613);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,614);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,615);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(44,616);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,617);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,618);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,619);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,620);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,621);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,622);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,623);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,624);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,625);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,626);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,627);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,628);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,629);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(45,630);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,631);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,632);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,633);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,634);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,635);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,636);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,637);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,638);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,639);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,640);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,641);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,642);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,643);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(46,644);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,645);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,646);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,647);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,648);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,649);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,650);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,651);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,652);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,653);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,654);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,655);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,656);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,657);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(47,658);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,659);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,660);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,661);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,662);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,663);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,664);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,665);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,666);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,667);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,668);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,669);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,670);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,671);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(48,672);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,673);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,674);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,675);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,676);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,677);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,678);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,679);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,680);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,681);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,682);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,683);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,684);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,685);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(49,686);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,687);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,688);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,689);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,690);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,691);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,692);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,693);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,694);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,695);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,696);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,697);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,698);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,699);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(50,700);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,701);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,702);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,703);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,704);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,705);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,706);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,707);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,708);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,709);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,710);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,711);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,712);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,713);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(51,714);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,715);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,716);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,717);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,718);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,719);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,720);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,721);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,722);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,723);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,724);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,725);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,726);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,727);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(52,728);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,729);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,730);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,731);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,732);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,733);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,734);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,735);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,736);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,737);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,738);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,739);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,740);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,741);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(53,742);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,743);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,744);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,745);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,746);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,747);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,748);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,749);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,750);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,751);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,752);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,753);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,754);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,755);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(54,756);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,757);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,758);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,759);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,760);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,761);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,762);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,763);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,764);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,765);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,766);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,767);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,768);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,769);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(55,770);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,771);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,772);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,773);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,774);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,775);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,776);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,777);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,778);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,779);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,780);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,781);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,782);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,783);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(56,784);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,785);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,786);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,787);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,788);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,789);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,790);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,791);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,792);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,793);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,794);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,795);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,796);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,797);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(57,798);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,799);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,800);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,801);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,802);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,803);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,804);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,805);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,806);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,807);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,808);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,809);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,810);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,811);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(58,812);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,813);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,814);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,815);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,816);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,817);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,818);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,819);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,820);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,821);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,822);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,823);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,824);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,825);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(59,826);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,827);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,828);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,829);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,830);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,831);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,832);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,833);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,834);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,835);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,836);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,837);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,838);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,839);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(60,840);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,841);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,842);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,843);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,844);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,845);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,846);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,847);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,848);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,849);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,850);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,851);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,852);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,853);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(61,854);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,855);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,856);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,857);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,858);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,859);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,860);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,861);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,862);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,863);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,864);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,865);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,866);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,867);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(62,868);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,869);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,870);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,871);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,872);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,873);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,874);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,875);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,876);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,877);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,878);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,879);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,880);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,881);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(63,882);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,883);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,884);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,885);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,886);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,887);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,888);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,889);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,890);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,891);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,892);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,893);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,894);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,895);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(64,896);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,897);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,898);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,899);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,900);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,901);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,902);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,903);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,904);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,905);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,906);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,907);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,908);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,909);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(65,910);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,911);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,912);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,913);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,914);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,915);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,916);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,917);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,918);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,919);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,920);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,921);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,922);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,923);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(66,924);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,925);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,926);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,927);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,928);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,929);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,930);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,931);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,932);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,933);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,934);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,935);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,936);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,937);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(67,938);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,939);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,940);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,941);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,942);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,943);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,944);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,945);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,946);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,947);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,948);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,949);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,950);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,951);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(68,952);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,953);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,954);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,955);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,956);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,957);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,958);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,959);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,960);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,961);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,962);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,963);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,964);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,965);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(69,966);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,967);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,968);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,969);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,970);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,971);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,972);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,973);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,974);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,975);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,976);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,977);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,978);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,979);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(70,980);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,981);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,982);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,983);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,984);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,985);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,986);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,987);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,988);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,989);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,990);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,991);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,992);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,993);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(71,994);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,995);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,996);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,997);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,998);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,999);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1000);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1001);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1002);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1003);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1004);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1005);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1006);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1007);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(72,1008);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1009);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1010);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1011);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1012);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1013);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1014);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1015);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1016);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1017);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1018);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1019);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1020);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1021);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(73,1022);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1023);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1024);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1025);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1026);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1027);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1028);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1029);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1030);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1031);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1032);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1033);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1034);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1035);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(74,1036);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1037);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1038);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1039);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1040);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1041);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1042);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1043);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1044);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1045);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1046);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1047);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1048);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1049);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(75,1050);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1051);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1052);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1053);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1054);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1055);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1056);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1057);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1058);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1059);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1060);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1061);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1062);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1063);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(76,1064);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1065);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1066);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1067);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1068);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1069);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1070);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1071);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1072);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1073);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1074);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1075);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1076);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1077);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(77,1078);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1079);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1080);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1081);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1082);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1083);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1084);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1085);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1086);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1087);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1088);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1089);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1090);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1091);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(78,1092);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1093);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1094);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1095);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1096);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1097);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1098);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1099);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1100);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1101);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1102);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1103);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1104);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1105);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(79,1106);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1107);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1108);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1109);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1110);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1111);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1112);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1113);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1114);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1115);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1116);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1117);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1118);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1119);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(80,1120);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1121);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1122);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1123);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1124);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1125);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1126);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1127);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1128);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1129);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1130);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1131);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1132);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1133);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(81,1134);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1135);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1136);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1137);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1138);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1139);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1140);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1141);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1142);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1143);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1144);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1145);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1146);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1147);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(82,1148);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1149);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1150);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1151);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1152);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1153);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1154);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1155);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1156);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1157);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1158);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1159);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1160);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1161);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(83,1162);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1163);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1164);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1165);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1166);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1167);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1168);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1169);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1170);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1171);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1172);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1173);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1174);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1175);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(84,1176);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1177);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1178);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1179);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1180);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1181);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1182);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1183);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1184);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1185);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1186);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1187);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1188);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1189);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(85,1190);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1191);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1192);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1193);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1194);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1195);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1196);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1197);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1198);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1199);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1200);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1201);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1202);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1203);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(86,1204);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1205);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1206);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1207);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1208);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1209);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1210);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1211);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1212);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1213);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1214);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1215);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1216);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1217);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(87,1218);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1219);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1220);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1221);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1222);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1223);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1224);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1225);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1226);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1227);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1228);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1229);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1230);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1231);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(88,1232);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1233);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1234);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1235);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1236);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1237);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1238);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1239);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1240);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1241);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1242);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1243);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1244);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1245);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(89,1246);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1247);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1248);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1249);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1250);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1251);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1252);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1253);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1254);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1255);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1256);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1257);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1258);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1259);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(90,1260);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1261);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1262);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1263);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1264);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1265);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1266);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1267);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1268);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1269);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1270);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1271);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1272);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1273);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(91,1274);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1275);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1276);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1277);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1278);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1279);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1280);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1281);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1282);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1283);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1284);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1285);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1286);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1287);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(92,1288);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1289);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1290);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1291);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1292);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1293);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1294);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1295);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1296);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1297);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1298);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1299);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1300);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1301);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(93,1302);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1303);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1304);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1305);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1306);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1307);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1308);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1309);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1310);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1311);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1312);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1313);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1314);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1315);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(94,1316);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1317);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1318);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1319);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1320);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1321);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1322);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1323);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1324);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1325);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1326);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1327);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1328);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1329);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(95,1330);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1331);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1332);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1333);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1334);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1335);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1336);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1337);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1338);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1339);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1340);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1341);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1342);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1343);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(96,1344);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1345);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1346);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1347);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1348);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1349);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1350);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1351);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1352);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1353);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1354);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1355);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1356);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1357);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(97,1358);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1359);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1360);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1361);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1362);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1363);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1364);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1365);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1366);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1367);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1368);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1369);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1370);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1371);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(98,1372);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1373);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1374);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1375);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1376);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1377);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1378);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1379);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1380);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1381);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1382);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1383);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1384);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1385);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(99,1386);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1387);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1388);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1389);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1390);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1391);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1392);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1393);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1394);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1395);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1396);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1397);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1398);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1399);
Insert into Avaliações (ID_Inscrição, ID_Avaliação)
Values(100,1400);
