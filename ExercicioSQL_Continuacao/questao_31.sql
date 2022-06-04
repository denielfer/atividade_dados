use `db`;
select nome from Empregado where matricula not in (select mat from Dependente group by mat);