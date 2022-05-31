use `db`;
INSERT INTO Departamento (cod, nome, localizacao, matgerente, datainicioger) VALUES 
(1,'dep financeiro','sede',null,null),
(2,'dep engenharia','sede',null,null),
(3,'dep suport','sede',null,null),
(4,'dep analistas','sede',null,null),
(5,'dep segurança','sede',null,null);

INSERT INTO Empregado (matricula, nome, rua, bairro, telefone, datanasc, 
dataadm, funcao, coddepart, matgerente, salario, comissao) VALUES 
(1,'nelson','rua d','bairo 3','75943218765','1984/01/30','2018/07/23','gerente engenheiro',1,null,2134,213),
(2,'roberto','rua a','bairo 1','75912345678','1981/05/15','2018/07/23','engenheiro de sistemas',1,1,3214,123),
(3,'fenrir','rua b','bairo 2','75987654321','1982/02/26','2018/07/23','bonbeiro',2,null,4123,0),
(4,'sotun','rua c','bairo 1','75912348765','1982/03/11','2018/07/23','analista',3,null,4231,0),
(5,'astrite','rua a','bairo 1','75943215678','1983/04/05','2018/07/23','engenheiro de sistemas',1,1,1234,321);

UPDATE  Departamento SET matgerente = 1,datainicioger = '2018/07/23' WHERE cod = 1;
UPDATE  Departamento SET matgerente = 3,datainicioger = '2018/07/23' WHERE cod = 2;
UPDATE  Departamento SET matgerente = 4,datainicioger = '2018/07/23' WHERE cod = 3;

INSERT INTO Dependente (mat, num, nome, sexo, datanasc, parentesco) VALUES 
(1,1,'nelson1','F','2005/01/30','filha'),
(1,2,'nelson2','f','2010/05/15','enteada'),
(3,1,'fenrir1','M','2013/07/23','filho'),
(3,2,'fenrir2','m','2012/07/23','sobrinho'),
(5,1,'astrite1','F','2017/07/23','mae');

INSERT INTO Projeto (cod, nome, situacao, coddepart) VALUES 
(1,'hecate','em desenvolvimento',1),
(2,'mars','Concluída',2),
(3,'robor','Concluída',5),
(4,'argus','em desenvolvimento',4),
(5,'valtan','em analize',1);


INSERT INTO TrabalhaEm (mat, codproj, papel, horas)  VALUES 
(1,1,'desenvolvedor front',50),
(2,1,'desenvolvedor sistemas',65),
(5,4,'desenvolvedor',100),
(3,2,'pesquisador',40),
(4,5,'Analista',5);