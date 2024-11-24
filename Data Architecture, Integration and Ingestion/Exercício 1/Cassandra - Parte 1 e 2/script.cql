-- Alunos:
-- RM357067 - Edinaldo Rodrigues de Oliveira Junior
-- RM358158 - Henrique Cardoso
-- RM358067 - Jefferson de Souza Santos
-- RM357344 - Walace Vinicius Silva dos Santos

-- CONFIGURACAO DO AMBIENTE
-- docker pull cassandra
-- docker run --name MyCassandra -it cassandra bash
-- cassandra -R
-- nodetool status
-- cqlsh

-- PARTE 1
CREATE KEYSPACE exercicio_1
WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};

use exercicio_1;

--Tabela Produtos
CREATE TABLE produtos (
    codigo INT PRIMARY KEY,
    nome TEXT,
    modelo TEXT,
    fabricante TEXT,
    cor SET<TEXT>,
    tam LIST<INT>
    );
    
--Tabela Clientes
CREATE TABLE clientes (
    cpf TEXT PRIMARY KEY,
    nome TEXT,
    endereco TEXT,
    cep TEXT,
    email TEXT,
    telefones TEXT
    );

--Tabela Pedidos
CREATE TABLE pedidos (
    pedidoid INT PRIMARY KEY,
    clientecpf TEXT,
    endereco TEXT,
    cep TEXT,
    itens LIST<INT>,
    qtdes LIST<INT>,
    valorpago DECIMAL
);


-- PARTE 2
-- Tabela produtos
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(1, 'Tenis Casual', 'Masculino', 'Adidas', {'Preto', 'Cinza'}, [38, 39, 40, 41])
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(2, 'Tenis Casual', 'Feminino', 'Nike', {'Branco', 'Rosa'}, [35, 36, 37, 38]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(3, 'Sapato Social', 'Masculino', 'Louis Vuitton', {'Preto', 'Marrom'}, [40, 41, 42]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(4, 'Sapato Social', 'Feminino', 'Prada', {'Marrom', 'Vinho'}, [35, 36, 37]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(5, 'Tenis Corrida', 'Masculino', 'Nike', {'Cinza', 'Preto'}, [39, 40, 41, 42]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(6, 'Tenis Corrida', 'Feminino', 'Adidas', {'Rosa', 'Branco'}, [36, 37, 38, 39]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(7, 'Chinelo', 'Masculino', 'Havaianas', {'Azul', 'Verde'}, [39, 40, 41]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(8, 'Chinelo', 'Feminino', 'Havaianas', {'Vermelho', 'Amarelo'}, [36, 37, 38]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(9, 'Sapato Social', 'Masculino', 'Gucci', {'Preto'}, [41, 42, 43]);
INSERT INTO produtos (codigo, nome, modelo, fabricante, cor, tam) VALUES
(10, 'Tenis Corrida', 'Feminino', 'Puma', {'Branco', 'Lilas'}, [37, 38, 39]);

-- Tabela clientes
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('111.111.111-11', 'Joao Silva', 'Rua das Flores, 123', '12345678', 'joao@example.com', '111111111');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('222.222.222-22', 'Maria Oliveira', 'Av. Brasil, 456', '23456789', 'maria@example.com', '222222222');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('333.333.333-33', 'Pedro Santos', 'Travessa Central, 789', '34567890', 'pedro@example.com', '333333333');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('444.444.444-44', 'Ana Pereira', 'Rua do Sol, 101', '45678901', 'ana@example.com', '444444444');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('555.555.555-55', 'Carlos Almeida', 'Praca da Liberdade, 202', '56789012', 'carlos@example.com', '555555555');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('666.666.666-66', 'Beatriz Souza', 'Estrada Verde, 303', '67890123', 'beatriz@example.com', '666666666');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('777.777.777-77', 'Lucas Costa', 'Av. Paulista, 404', '78901234', 'lucas@example.com', '777777777');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('888.888.888-88', 'Fernanda Rodrigues', 'Rua da Praia, 505', '89012345', 'fernanda@example.com', '888888888');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('999.999.999-99', 'Guilherme Barros', 'Av. das Palmeiras, 606', '90123456', 'guilherme@example.com', '999999999');
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones) VALUES
('000.000.000-00', 'Juliana Lima', 'Rua das Estrelas, 707', '01234567', 'juliana@example.com', '000000000');

-- Tabela pedidos
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(1, '111.111.111-11', 'Rua das Flores, 123', '12345678', [1, 2], [3], 180.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(2, '222.222.222-22', 'Av. Brasil, 456', '23456789', [2, 3], [4], 250.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(3, '333.333.333-33', 'Travessa Central, 789', '34567890', [3, 4, 5], [6], 400.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(4, '444.444.444-44', 'Rua do Sol, 101', '45678901', [4, 6], [5], 500.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(5, '555.555.555-55', 'Praca da Liberdade, 202', '56789012', [5, 7], [7], 550.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(6, '666.666.666-66', 'Estrada Verde, 303', '67890123', [6, 7, 8], [6], 650.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(7, '777.777.777-77', 'Av. Paulista, 404', '78901234', [7, 8, 9], [8], 750.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(8, '888.888.888-88', 'Rua da Praia, 505', '89012345', [8, 9], [9], 800.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(9, '999.999.999-99', 'Av. das Palmeiras, 606', '90123456', [9, 10], [10], 900.00);
INSERT INTO pedidos (pedidoid, clientecpf, endereco, cep, itens, qtdes, valorpago) VALUES
(10, '000.000.000-00', 'Rua das Estrelas, 707', '01234567', [10], [1], 100.00);
