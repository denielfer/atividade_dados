<<<<<<< HEAD
use `db`;
ALTER TABLE Projeto DROP FOREIGN KEY proj_coddep; 

=======
use `db`;
ALTER TABLE Projeto DROP FOREIGN KEY proj_coddep; 

>>>>>>> ff3f7e025e8802e955f78774608b27ac20f4a1fb
ALTER TABLE Projeto ADD CONSTRAINT proj_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod) on delete set default;