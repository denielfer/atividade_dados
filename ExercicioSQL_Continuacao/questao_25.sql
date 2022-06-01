use `db`;
select salario + comissao as total from Empregado where coddepart = (select cod from Departamento where nome like 'Informática') and funcao like 'Analista%';