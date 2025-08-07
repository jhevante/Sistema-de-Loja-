-- Criação do banco de dados
CREATE DATABASE Loja;
USE Loja;

-- Tabela de Estados
CREATE TABLE Estado (
    idEstado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela de Município
CREATE TABLE Municipio (
    idMunicipio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idEstado INT,
    FOREIGN KEY (idEstado) REFERENCES Estado(idEstado)
);

-- Tabela de Cliente
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    idMunicipio INT,
    situacao INT, -- 1 = Conta Registrada
    FOREIGN KEY (idMunicipio) REFERENCES Municipio(idMunicipio)
);

-- Tabela de Contas a Receber
CREATE TABLE ContraReceber (
    idConta INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    dataVencimento DATE,
    valor DECIMAL(10,2),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);