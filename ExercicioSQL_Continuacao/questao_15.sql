use `db`;
select codproj, count(mat) as empregados from TrabalhaEm group by codproj having empregados > 3;