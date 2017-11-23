USE db_Inqueritos1

--Pag.120(sebenta)-ex.40
--d)

Select Count(*) as Total_Inqueritos From Inqueritos1 
------
Select AVG(Age),Max(Age),Min(Age) From Inqueritos1
------
Select MaritalStatus, Count(*) 'TotalCasados', AVG(Age) ' Média'
From Inqueritos1
Group by MaritalStatus
------
Select Gender, Count(*) 'Total' From Inqueritos1
Group by Gender
----
Select Gender, Count(*) 'Total', AVG(Age) ' Média',MAX(Age) 'Máximo',MIN(Age)'Minimo'
From Inqueritos1
Group by Gender
----
Select MaritalStatus, Gender, Count(*) 
From Inqueritos1
Group by MaritalStatus, Gender