use `db`;
select p.nome as nome,te.horas as horas, p.situacao as situacao from TrabalhaEm te join Projeto p on p.cod = te.codproj where te.mat = ( select cod from Empregado e where e.nome like "Ana Santos" )