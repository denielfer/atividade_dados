use `db`;
select * from Empregado e where e.salario < ( select salario from Empregado e2 where e2.funcao like "%auxiliar%" )