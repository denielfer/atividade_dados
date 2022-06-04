use `db`;
select nome,salario from Empregado e2 where e2.salario > (select avg(salario) from Empregado e where e.coddepart = 1 group by e.coddepart )