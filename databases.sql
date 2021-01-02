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

INSERT INTO Funcionarios (Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario, CPF)
	VALUES
	(002, 'Patricia', 'Maria', 'McKenney', 23-09, 00002, 'Rua Ada Lovelace' , 000000012, 'João Pessoa', 5559884, 001, 'Marketing', 120, 2000000),
    (003, 'Tamires', 'Joana', 'Smith', 22-06, 00003, 'Alameda Guido van Rossum' , 000000324, 'São Carlos', 55344884, 034, 'Espeleóloga', 120, 3000000),
    (004, 'Marta', 'Christina', 'Ferreira', 03-12, 00004, 'Rua Honestino Guimarães' , 000034012, 'Brasília', 5558884, 042, 'Engenheira Ambiental', 96, 4000000),
    (005, 'Juliana', 'Lima', 'Ribeiro', 28-07, 00005, 'Rua Marielle Franco' , 000000012, 'Brasília', 53429884, 001, 'Arte e Cultura', 188, 5000000),
    (006, 'Paola', 'Maria', 'Matos', 15-04, 00006, 'Rua Liberdade' , 000065348, 'Ottawa', 3865884, 090, 'Administradora', 120, 6000000),
    (007, 'Maria' 'Eduarda', 'Matos', 15-04, 00007, 'SQN 120 bloco K' , 071224348, 'Mexico City', 4488884, 001, 'Back-End Developer', 120, 7000000),
    (008, 'Kristen', 'Elizabeth', 'Hussain', 13-04, 00007, 'University Avenue' , 098865348, 'Edmonton', 38233884, 001, 'Researcher', 003, 8000000),
    (009, 'Mirna', 'Santos', 'Lutz', 15-04, 00006, 'Rua Bertha Lutz' , 000065348, 'São Paulo', 7665884, 001, 'Analista', 190, 9000000),
    (010, 'Mary', 'Kenneth', 'Keller', 15-04, 00006, '32 Street' , 007664348, 'London', 3843884, 090, 'Consultant', 70, 10000000);


INSERT INTO Departamentos  (Codigo, Nome, Localizacao, CodigoFuncionarioGerente)
    VALUES
    (003, 'Outros', 'Paris', 0),
    (100, 'Engenharia', 'Edmonton', 1),
    (120, 'Pesquisa', 'São Paulo', 2),
    (188, 'Humanas', 'Brasília', 3),
    (190, 'Tecnologia', 'Ottawa', 5),
    (096, 'Sociologia', 'Brasília', 8),
    (070, 'Human Resources', 'Edmonton', 13);


UPDATE 



    
    
    
    

