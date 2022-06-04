use `db`;
SELECT codproj,count(codproj),min(horas),max(horas) from TrabalhaEm group by codproj