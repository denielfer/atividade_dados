use `db`;
ALTER TABLE Dependente add constraint check (sexo in ("F","f","m","M"));