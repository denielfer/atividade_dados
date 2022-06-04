use `db`;
select * from Empregado e2 where e2.bairro like (select e.bairro from Empregado e where e.nome like "Luis Claudio")