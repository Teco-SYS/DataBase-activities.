	-- criando Banco de dados --
	CREATE DATABASE EmpresaDB;
	-- Começar a usar o Banco criado --
	USE EmpresaDB;

	-- Criei a tabela --
	CREATE TABLE funcionario (
	ID INT PRIMARY KEY IDENTITY(1,1), -- (PK = primary key) e (IDENTITY = identidade como RG ou CPF) 
	Nome VARCHAR (150) NOT NULL,
	Cargo VARCHAR (100),
	Salario DECIMAL (10),
	DataAdmissao DATE 
	);
	-- Coloquei essa alteração só por fins estéticos pois tinha ficado possível nulo a data de admissão --
	ALTER TABLE funcionario
	ALTER COLUMN DataAdmissao DATE NOT NULL;

	CREATE TABLE Departamento(
	ID INT PRIMARY KEY,
	NomeDepartamento VARCHAR(100) UNIQUE NOT NULL, -- (UNIQUE = unico) --
	);

	ALTER TABLE funcionario
	ADD Email VARCHAR(200) NOT NULL;

	ALTER TABLE funcionario
	ALTER COLUMN Cargo VARCHAR(200) NOT NULL;

	ALTER TABLE funcionario
	DROP COLUMN DataAdmissao;

	DROP TABLE Departamento;