<<<<<<< HEAD
use `db`;
ALTER TABLE Empregado ALTER COLUMN coddepart SET DEFAULT 0;
ALTER TABLE Empregado ADD CONSTRAINT emp_codde FOREIGN KEY (coddepart) REFERENCES Departamento(cod) ON DELETE SET DEFAULT; 

ALTER TABLE Empregado ALTER COLUMN matgerente SET DEFAULT 0;
ALTER TABLE Empregado ADD CONSTRAINT emp_matg FOREIGN KEY (matgerente) REFERENCES  Empregado(matricula) on delete set default;  

ALTER TABLE Dependente ADD CONSTRAINT dep_mat FOREIGN KEY (mat) REFERENCES Empregado(matricula) on delete CASCADE; 

ALTER TABLE Departamento ALTER COLUMN matgerente SET DEFAULT 0;
ALTER TABLE Departamento ADD CONSTRAINT dep_matger FOREIGN KEY (matgerente) REFERENCES Empregado(matricula) on delete set default; 

ALTER TABLE Projeto ALTER COLUMN coddepart SET DEFAULT 0;
ALTER TABLE Projeto ADD CONSTRAINT proj_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod) on delete set default; 

ALTER TABLE TrabalhaEm ADD CONSTRAINT tab_mat FOREIGN KEY (mat) REFERENCES Empregado(matricula) on delete CASCADE; 

=======
use `db`;
ALTER TABLE Empregado ALTER COLUMN coddepart SET DEFAULT 0;
ALTER TABLE Empregado ADD CONSTRAINT emp_codde FOREIGN KEY (coddepart) REFERENCES Departamento(cod) ON DELETE SET DEFAULT; 

ALTER TABLE Empregado ALTER COLUMN matgerente SET DEFAULT 0;
ALTER TABLE Empregado ADD CONSTRAINT emp_matg FOREIGN KEY (matgerente) REFERENCES  Empregado(matricula) on delete set default;  

ALTER TABLE Dependente ADD CONSTRAINT dep_mat FOREIGN KEY (mat) REFERENCES Empregado(matricula) on delete CASCADE; 

ALTER TABLE Departamento ALTER COLUMN matgerente SET DEFAULT 0;
ALTER TABLE Departamento ADD CONSTRAINT dep_matger FOREIGN KEY (matgerente) REFERENCES Empregado(matricula) on delete set default; 

ALTER TABLE Projeto ALTER COLUMN coddepart SET DEFAULT 0;
ALTER TABLE Projeto ADD CONSTRAINT proj_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod) on delete set default; 

ALTER TABLE TrabalhaEm ADD CONSTRAINT tab_mat FOREIGN KEY (mat) REFERENCES Empregado(matricula) on delete CASCADE; 

>>>>>>> ff3f7e025e8802e955f78774608b27ac20f4a1fb
ALTER TABLE TrabalhaEm ADD CONSTRAINT tab_codproj FOREIGN KEY (codproj) REFERENCES Projeto(cod) on delete CASCADE; 