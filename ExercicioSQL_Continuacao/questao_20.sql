use `db`;
Select d.nome,sum(e.salario) from Empregado e inner join Departamento d on d.cod = e.coddepart group by d.nome