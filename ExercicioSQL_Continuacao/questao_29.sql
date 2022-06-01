use `db`;
select Empregado.nome as empregado, Projeto.nome as projeto from Empregado, Projeto, TrabalhaEm where Empregado.matricula = TrabalhaEm.mat and Projeto.cod = TrabalhaEm.codproj;