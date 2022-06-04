use `db`;
select * from Departamento d where d.cod not in (select e.coddepart from Empregado e)