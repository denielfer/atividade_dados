use `db`;
select Empregado.nome as empregado, Dependente.nome as dependente, Dependente.sexo from Empregado, Dependente where Empregado.matricula = Dependente.mat order by Dependente.sexo ASC;