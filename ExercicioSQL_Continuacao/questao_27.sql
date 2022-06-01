use `db`;
select Empregado.nome, count(Dependente.mat) as quantidade from Empregado, Dependente where Empregado.matricula = Dependente.mat group by Empregado.nome having quantidade > 2;