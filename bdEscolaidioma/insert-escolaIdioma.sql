USE bdEscolaIdioma

--DROP DATABASE bdEscolaIdioma

INSERT INTO tbCurso(nomeCurso)
VALUES ('Ingles')
		,('Alemão')
		,('Espanhol')

SELECT * FROM tbCurso

INSERT INTO tbPeriodo (descPeriodo)
VALUES ('manhã')
		,('tarde')
		,('noite')

SELECT * FROM tbPeriodo

INSERT INTO tbNivel (descNivel)
VALUES ('iniciante')
		,('intermediario')
		,('fluente')

SELECT * FROM tbNivel

INSERT INTO tbDiaSemana(diaSeamana)
VALUES ('Segunda')
		,('Terça')
		,('Quarto')
		,('Quinta')
		,('Sexta')
		,('Sabádo')

SELECT * FROM tbDiaSemana

INSERT INTO tbAluno(nomeAluno, rgAluno, enderecoAluno, numEndAluno, compLog, bairroAluno, cepAluno, cidadeAluno)
VALUES ('Peter de Oliveira', '60.585.255-8' , 'Rua Orelena' , 40 , '' , 'Lageado Velho' , 88440804 , 'São Paulo')
		,('Isabelly Godoi', '60.549.594-8' , 'Rua Adolfo Schnabel' , 24 , '' , 'Vila Ema' , 03279210 , 'São Jose dos Campos')
		,('Carlos Mendes Magno', '60.678.876-8' , 'Rua Aguinaldo Bezerra dos Santos' , 78 , '' , 'Itaim Paulista' , 08131070 , 'São Paulo')
		,('Eduardo Nascimento', '61.564.185-8' , 'Rua Altieri' , 56 , '' , 'Barra Funda' , 01136040 , 'São Paulo')
		,('Kaue Rodrigues', '60.156.368-8' , 'Rua Anhangüera' , 45 , '' , 'Barra Funda' , 28628365 , 'São Paulo')
		,('Luiz Otavio', '60.648.916-8', 'Rua Anhangüera', 31 , '' , 'Barra Funda' , 41473459 , 'São Paulo')

SELECT * FROM tbAluno

INSERT INTO tbFoneAluno (foneAluno , idAluno)
VALUES ('1198652-9942' , 1)
		,('11 95165-4901' , 1)
		,('11 97020-6048' , 2)
		,('11 97236-7854' , 2)
		,('11 94336-5345' , 3)
		,('11 94756-8655' , 3)
		,('11 95178-8048' , 4)
		,('11 95397-6565' , 4)
		,('11 98850-3140' , 5)
		,('11 98284-6534' , 5)
		,('11 99161-3095' , 6)
		,('11 99387-6545' , 6)

SELECT * FROM tbFoneAluno

INSERT INTO tbTurma(horarioTurma, idCurso , idPeridodo, idNivel, idDiaSemana)
VALUES ('15:10' , 1 , 2 , 2 , 6)
		,('09:00', 2 , 1 , 1 , 4)
		,('15:10', 3 , 2 , 3 , 2)
		,('19:30', 1 , 3 , 2 , 1)
		,('16:15', 2 , 2 , 2 , 5)

SELECT * FROM tbTurma

INSERT INTO tbMatricula(dataMatricula, idTurma , idAluno)
VALUES ('22/09/2022' , 2 , 1)
		,('13/05/2021' , 1 , 1)
		,('04/05/2020' , 4 , 2)
		,('05/04/2021' , 5 , 2)
		,('07/05/2019' , 3 , 3)
		,('18/06/2022' , 2 , 3)
		,('22/05/2022' , 2 , 4)
		,('29/06/2021' , 4 , 4)
		,('19/06/2020' , 3 , 5)
		,('26/09/2020' , 5 , 5)
		,('27/09/2018' , 1 , 6)
		,('04/03/2021' , 5 , 6)

SELECT * FROM tbMatricula