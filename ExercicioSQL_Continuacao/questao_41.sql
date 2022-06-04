use `db`;
select nome from Empregado where salario = (select salario from Empregado group by salario order by salario desc limit 1, 1);