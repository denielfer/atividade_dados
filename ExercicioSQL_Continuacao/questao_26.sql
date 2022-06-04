use `db`;
select * from (Select * from Projeto p join TrabalhaEm te on te.codproj = p.cod where p.situacao not like "%ConcluÃ­da%" and p.situacao not like "%done%" ) as pt ORDER by cod,mat