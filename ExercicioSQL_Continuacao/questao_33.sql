use `db`;
select nome from Empregado where salario > (select avg(salario) from Empregado);