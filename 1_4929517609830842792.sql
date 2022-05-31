# Mariadb
# Definição
# 1)
Create Table Empregado(
  matricula INT AUTO_INCREMENT,
  nome varchar(255),
  rua varchar(255),
  bairo varchar(255),
  datanasc date,
  dataadm date,
  funcao varchar(50),
  telefone varchar(13),
  coddepart int,
  matgerente int,
  salario float,
  comissao float,
  Primary Key(matricula)
);
Create Table Dependente(
  mat INT,
  num INT,
  sexo char(1),
  datanasc date,
  parentesco varchar(50),
  Primary Key(mat),
  Primary Key(num)
);
Create Table Departamento(
  cod INT AUTO_INCREMENT,
  nome varchar(255),
  rua varchar(255),
  localizacao varchar(255),
  matgerente int,
  datainicioger date,
  Primary Key(cod)
);
Create Table Projeto(
  cod INT AUTO_INCREMENT,
  nome varchar(255),
  situacao varchar(255),
  coddepart int,
  Primary Key(cod)
);
Create Table TrabalhaEm(
  mat INT,
  codproj INT,
  papel varchar(50),
  horas int,
  Primary Key(mat),
  Primary Key(codproj)
);

# 2)

ALTER TABLE Empregado ADD CONSTRAINT emp_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod); # adicionar: on delete set default 0

ALTER TABLE Empregado ADD CONSTRAINT emp_matg FOREIGN KEY (matgerente) REFERENCES  Empregado(matricula);# add on delete  set default 0

ALTER TABLE Dependente ADD CONSTRAINT dep_mat FOREIGN KEY (mat) REFERENCES Empregado(matricula); # on delete castate

ALTER TABLE Departamento ADD CONSTRAINT dep_matger FOREIGN KEY (matgerente) REFERENCES Empregado(matricula); # on delete set default 0

ALTER TABLE Projeto ADD CONSTRAINT proj_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod); # on delete set default 0 

ALTER TABLE TrabalhaEm ADD CONSTRAINT tab_mat FOREIGN KEY (mat) REFERENCES Empregado(matricula); # on delete castate

ALTER TABLE TrabalhaEm ADD CONSTRAINT tab_codproj FOREIGN KEY (codproj) REFERENCES Projeto(cod); # on delete cascate

# 3)

ALTER TABLE Dependente MODIFY COLUMN nome varchar(255) not null;

# 4)

ALTER TABLE Projeto DROP FOREIGN KEY proj_coddep; 

ALTER TABLE Projeto ADD CONSTRAINT proj_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod); # on delete set default 0 

# 5 e 6) refazer para mysql

ALTER TABLE Dependente MODIFY COLUMN sexo ENUM('F','M'); 

ALTER TABLE Dependente add constraint dep_sexo_check check(sexo in ('f','F','m','M'));

# 7)

# manipulação

#consultas - sql
#1)
select * from Projeto;
#2)
select nome,matgerente,datainicioger from Departamento;
#3)
select * from Empregado where salario>1500 and 3000>salario;
#4)
select * from Projeto where situacao like '%ConcluÃ­da%' and coddepart = 5;
select * from Projeto where situacao like '%Concluída%' and coddepart = 5;
#5)
select * from Empregado where funcao like '%Analista%' and coddepart = 1;
#6)
select * from Projeto where nome like '%Engenharia%';
#7)
select nome,salario*1.1 from Empregado where coddepart=2;
#8) #roda pra testa
select salario from Empregado group by salario;
#9)
select nome from Empregado where dataadm < '01/02/2022';
#10)
select nome from Departamento where cod in (select coddepart from Empregado where salario>10000) group by nome;
#11)
select nome from Empregado where matricula in (select mat from TrabalhaEm where codproj in ( select cod from Projeto where nome like "%Engenharia%") );
#12)
select nome from Empregado where matricula in ( select mat from Dependente where parentesco like "%filho%" );