use `db`;
select * from Empregado e2 where e2.comissao > (select max(e.comissao) from Empregado e where e.coddepart = (select d.cod from Departamento d where d.nome like "Administração"))