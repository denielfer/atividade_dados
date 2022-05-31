<<<<<<< HEAD
use `db`;
=======
use `db`;
>>>>>>> ff3f7e025e8802e955f78774608b27ac20f4a1fb
select nome from Empregado where matricula in (select mat from TrabalhaEm where codproj in ( select cod from Projeto where nome like "%Engenharia%") );