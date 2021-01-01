CREATE TABLE Funcionarios (
		Codigo INTEGER PRIMARY KEY,
		PrimeiroNome TEXT NOT NULL,
		SegundoNome TEXT NOT NULL,
		UltimoNome TEXT NOT NULL,
		DataNasci 
		CPF INTEGER NOT NULL,
		RG INTEGER,
		Endereco TEXT NOT NULL,
		CEP INTEGER NOT NULL,
		Cidade TEXT,
		Fone INTEGER,
		CodigoDepartamento INTEGER,
		Funcao TEXT NOT NULL,
		Salario  INTEGER
		); 

ALTER TABLE Funcionarios ADD CPF INTEGER 

CREATE TABLE Departamentos (
	Codigo INTEGER PRIMARY KEY,
	Nome TEXT NOT NULL,
	Localizacao TEXT NOT NULL,
	CodigoFuncionarioGerente INTEGER NOT NULL
	);


INSERT INTO Funcionarios (Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario, CPF)
	VALUES
	(001, 'Helena', 'Raira', 'Magaldi', 20-02, 00001, 'Alameda das Rosas' , 00000001, 'Edmonton', 5559098, 001, 'Engenheira de Software', 100, 1000000);		


