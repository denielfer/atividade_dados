use `db`;
select count(*) as total from (select salario from Empregado group by salario) as distintos;