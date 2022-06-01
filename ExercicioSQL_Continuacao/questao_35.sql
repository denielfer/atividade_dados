use `db`;
select Empregado.nome from Empregado, Projeto, TrabalhaEm where Empregado.matricula = TrabalhaEm.mat and Projeto.cod = TrabalhaEm.codproj and Projeto.situacao like 'ConcluÃ­da';