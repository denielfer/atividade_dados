use `db`;
SELECT avg(horas),mat from TrabalhaEm where horas < 10 group by mat