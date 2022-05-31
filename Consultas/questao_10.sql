<<<<<<< HEAD
use `db`;
=======
use `db`;
>>>>>>> ff3f7e025e8802e955f78774608b27ac20f4a1fb
select nome from Departamento where cod in (select coddepart from Empregado where salario>10000) group by nome;