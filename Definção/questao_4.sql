use `db`;
ALTER TABLE Projeto DROP FOREIGN KEY proj_coddep; 

ALTER TABLE Projeto ADD CONSTRAINT proj_coddep FOREIGN KEY (coddepart) REFERENCES Departamento(cod) on delete set default;