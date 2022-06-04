use `db`;
select Departamento.nome, Empregado.nome, Empregado.salario from Departamento, Empregado where (Departamento.matgerente = Empregado.matricula) order by Empregado.salario DESC;