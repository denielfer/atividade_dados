INSERT INTO Departamento (cod, nome, localizacao, matgerente, datainicioger) VALUES 
(0,'dep financeiro','sede',null,null)
(1,'dep engenharia','sede',null,null), --,0,'23/07/2018'),
(2,'dep suport','sede',null,null), --,2,'23/07/2018'),
(3,'dep analistas','sede',null,null), --,3,'23/07/2018'),
(4,'dep segurança','sede',null,null);

INSERT INTO Empregado (matricula, nome, rua, bairro, telefone, datanasc, 
dataadm, funcao, coddepart, matgerente, salario, comissao) VALUES 
(0,'nelson','rua d','bairo 3','75943218765','30/01/1984','23/07/2018','gerente engenheiro',1,null,2134,213)
(1,'roberto','rua a','bairo 1','75912345678','15/05/1981','23/07/2018','engenheiro de sistemas',1,0,3214,123),
(2,'fenrir','rua b','bairo 2','75987654321','26/02/1982','23/07/2018','bonbeiro',2,null,4123,0),
(3,'sotun','rua c','bairo 1','75912348765','11/03/1982','23/07/2018','analista',3,null,4231,0),
(4,'astrite','rua a','bairo 1','75943215678','05/04/1983','23/07/2018','engenheiro de sistemas',1,0,1234,321);

Insert INTO Departamento (matgerente,datainicioger)  VALUES (0,'23/07/2018') WHERE cod = 1;
Insert INTO Departamento (matgerente,datainicioger)  VALUES (2,'23/07/2018') WHERE cod = 2;
Insert INTO Departamento (matgerente,datainicioger)  VALUES (3,'23/07/2018') WHERE cod = 3;

INSERT INTO Dependente (mat, num, nome, sexo, datanasc, parentesco) VALUES 
(0,0,'nelson1','F','30/01/2005','filha')
(0,1,'nelson2','f','15/05/2010','enteada'),
(2,0,'fenrir1','M','23/07/2013','filho'),
(2,1,'fenrir2','m','23/07/2012','sobrinho'),
(4,0,'astrite1','F','23/07/2017','mae');

INSERT INTO Projeto (cod, nome, situacao, coddepart) VALUES 
(0,'hecate','em desenvolvimento',1)
(1,'mars','finalizado',2),
(2,'robor','finalizado',1),
(3,'argus','em desenvolvimento',4),
(4,'valtan','em analize',1);


INSERT INTO TrabalhaEm (mat, codproj, papel, horas)  VALUES 
(0,0,'desenvolvedor front',50)
(1,0,'desenvolvedor sistemas',65),
(4,3,'desenvolvedor',100),
(2,1,'pesquisador',40),
(3,4,'Analista',5);