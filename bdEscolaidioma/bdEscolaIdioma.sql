CREATE DATABASE bdEscolaIdioma

--DROP DATABASE bdEscolaIdioma

USE bdEscolaIdioma

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,nomeCurso VARCHAR(60) NOT NULL
)

CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,descNivel VARCHAR(80) NOT NULL
)

CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,descPeriodo VARCHAR(80) NOT NULL
)

CREATE TABLE tbDiaSemana (
	idDiaSemana INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,diaSeamana CHAR(20) NOT NULL
)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY NOT NULL IDENTITY(1,1)
	,horarioTurma VARCHAR (20) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idPeridodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo)
	,idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel)
	,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (idDiaSemana)
)

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,nomeAluno VARCHAR (60) NOT NULL
	,rgAluno CHAR (30) NOT NULL
	,enderecoAluno VARCHAR (80) NOT NULL
	,numEndAluno INT NOT NULL
	,compLog VARCHAR (30) 
	,bairroAluno VARCHAR (40)
	,cepAluno INT NOT NULL
	,cidadeAluno VARCHAR (60)
)

CREATE TABLE tbFoneAluno (
	idFoneAluno INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,foneAluno VARCHAR (20) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY NOT NULL IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL 
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)