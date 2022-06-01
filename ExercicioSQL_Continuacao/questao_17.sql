use `db`;
select Empregado.nome, Empregado.salario from Empregado where matricula = (select mat from TrabalhaEm where codproj = (select cod from Projeto where nome like 'Gestão do Conhecimento'));