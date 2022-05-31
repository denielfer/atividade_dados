use `db`;
select sum(horas), mat from TrabalhaEm group by mat, codproj;