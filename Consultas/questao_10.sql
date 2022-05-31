use `db`;
select nome from Departamento where cod in (select coddepart from Empregado where salario>10000) group by nome;