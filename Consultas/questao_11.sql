use `db`;
select nome from Empregado where matricula in (select mat from TrabalhaEm where codproj in ( select cod from Projeto where nome like "%Engenharia%") );