create database `db`;
use `db`;

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
  nome varchar(255),
  sexo char(1),
  datanasc date,
  parentesco varchar(50),
  Primary Key(mat , num)
);
Create Table Departamento(
  cod INT AUTO_INCREMENT,
  nome varchar(255),
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
  Primary Key(mat,codproj)
);