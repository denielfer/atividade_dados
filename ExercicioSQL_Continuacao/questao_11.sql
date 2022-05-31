use `db`;
select sum(salario)/count(salario) from Empregado group by coddepart;