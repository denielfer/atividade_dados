use `db`;
select * from Dependente d2 WHERE d2.parentesco like (select d.parentesco  from Dependente d where d.mat = ( SELECT e.matricula  from Empregado e where e.nome like "Antonio Carlos" ))