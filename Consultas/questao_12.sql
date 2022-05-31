use `db`;
select nome from Empregado where matricula in ( select mat from Dependente where parentesco like "%filho%" );