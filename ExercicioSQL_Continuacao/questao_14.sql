use `db`;
select mat from (select mat,count(mat) as qtd from TrabalhaEm GROUP by mat) as temporario where qtd>2