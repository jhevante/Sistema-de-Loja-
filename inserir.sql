-- Inserção de dados em Estado e Município
INSERT INTO Estado (nome) VALUES ('Rio de Janeiro');
INSERT INTO Municipio (nome, idEstado) VALUES ('Rio de Janeiro', 1);

-- Inserção de dados de clientes
INSERT INTO Cliente (nome, cpf, idMunicipio, situacao) 
VALUES ('Maria Silva', '123.456.789-00', 1, 1),
       ('João Souza', '987.654.321-00', 1, 0),
       ('Ana Costa', '321.654.987-00', 1, 1);

-- Inserção de contas a receber
INSERT INTO ContraReceber (idCliente, dataVencimento, valor)
VALUES (1, '2024-08-10', 250.00),
       (3, '2024-08-15', 480.00),
       (2, '2024-08-20', 120.00);