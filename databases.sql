CREATE TABLE Funcionarios (
		Codigo INTEGER PRIMARY KEY,
		PrimeiroNome TEXT NOT NULL,
		SegundoNome TEXT NOT NULL,
		UltimoNome TEXT NOT NULL,
		DataNasci TEXT NOT NULL,
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
	(001, 'Helena', 'Raira', 'Magaldi', '1988-02-20', 00001, 'Alameda das Rosas' , 00000001, 'Edmonton', 5559098, 100, 'Engenheira de Software', 1000, 1000000),	
	(002, 'Patricia', 'Maria', 'McKenney', '1987-09-34', 00002, 'Rua Ada Lovelace' , 000000012, 'João Pessoa', 5559884, 100, 'Marketing', 1200, 2000000),
    (003, 'Tamires', 'Joana', 'Smith', '1978-06-22', 00003, 'Alameda Guido van Rossum' , 000000324, 'São Carlos', 55344884, 188, 'Espeleóloga', 1120, 3000000),
    (004, 'Marta', 'Christina', 'Ferreira', '1994-12-03', 00004, 'Rua Honestino Guimarães' , 000034012, 'Brasília', 5558884, 120, 'Engenheira Ambiental', 96, 4000000),
    (005, 'Juliana', 'Lima', 'Ribeiro', '2020-07-20', 00005, 'Rua Marielle Franco' , 000000012, 'Brasília', 53429884, 190, 'Arte e Cultura', 1898, 5000000),
    (006, 'Paola', 'Maria', 'Matos', '1992-04-15', 00006, 'Rua Liberdade' , 000065348, 'Ottawa', 3865884, 096, 'Administradora', 1220, 6000000),
    (007, 'Maria', 'Eduarda', 'Matos', '1980-10-26', 00007, 'SQN 120 bloco K' , 071224348, 'Mexico City', 4488884, 003, 'Back-End Developer', 12120, 7000000),
    (008, 'Kristen', 'Elizabeth', 'Hussain', '1925-12-04', 00007, 'University Avenue' , 098865348, 'Edmonton', 38233884, 003, 'Researcher', 003, 8000000),
    (009, 'Mirna', 'Santos', 'Lutz', '1988-04-15', 00006, 'Rua Bertha Lutz' , 000065348, 'São Paulo', 7665884, 096, 'Analista', 1930, 9000000),
    (010, 'Mary', 'Kenneth', 'Keller', '1986-3-20', 00006, '32 Street' , 007664348, 'London', 3843884, 003, 'Consultant', 7000, 10000000);


INSERT INTO Departamentos  (Codigo, Nome, Localizacao, CodigoFuncionarioGerente)
    VALUES
    (003, 'Outros', 'Paris', 0),
    (100, 'Engenharia', 'Edmonton', 1),
    (120, 'Pesquisa', 'São Paulo', 2),
    (188, 'Humanas', 'Brasília', 3),
    (190, 'Tecnologia', 'Ottawa', 5),
    (096, 'Sociologia', 'Brasília', 8),
    (070, 'Human Resources', 'Edmonton', 13);

-- QUESTÃO A) Listar nome e sobrenome ordenado por sobrenome
SELECT PrimeiroNome, UltimoNome
FROM Funcionarios
ORDER BY UltimoNome

-- QUESTÃO B) Listar todos os campos de funcionarios ordenados por cidade
SELECT *
FROM Funcionarios
ORDER BY Cidade

-- QUESTÃO C) Liste os funcionários que têm salário superior a R$ 1.000,00 ordenados pelo nome completo
SELECT *
FROM Funcionarios
WHERE Salario > 1000
ORDER BY PrimeiroNome,
SegundoNome, UltimoNome

-- QUESTÃO D) Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho
SELECT DataNasci, PrimeiroNome
FROM Funcionarios
ORDER BY DataNasci DESC,
PrimeiroNome

-- QUESTÃO E) Liste o total da folha de pagamento
SELECT SUM(Salario) 
FROM Funcionarios

-- QUESTÃO F) Liste o nome, o nome do departamento e a função de todos os funcionários
SELECT Funcionarios.PrimeiroNome, Departamentos.Nome,
Funcionarios.Funcao
FROM Funcionarios JOIN Departamentos 
ON Funcionarios.CodigoDepartamento = Departamentos.Codigo
ORDER BY Funcionarios.PrimeiroNome


-- G)	Liste a quantidade de funcionários desta empresa
SELECT COUNT(*) 
FROM Funcionarios

-- H)	Liste o nome do departamento e do funcionário ordenados por departamento e funcionário
SELECT Departamentos.Nome, Funcionarios.PrimeiroNome
FROM Departamentos JOIN
Funcionarios ON Departamentos.Codigo =
Funcionarios.CodigoDepartamento
ORDER BY Departamentos.Nome, Funcionarios.PrimeiroNome





    
    
    
    

