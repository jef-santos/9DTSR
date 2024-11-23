-- Alunos:
-- RM357067 - Edinaldo Rodrigues de Oliveira Junior
-- RM358158 - Henrique Cardoso
-- RM358067 - Jefferson de Souza Santos
-- RM357344 - Walace Vinicius Silva dos Santos

-- CONFIGURACAO DO AMBIENTE
-- docker run --name MySQL -it ivangancev/ubuntusql:latest bash
-- apt install mysql-server
-- service mysql start 
-- mysql

-- PARTE 1
-- Criacao Database
create database exercicio_1;
use exercicio_1;

-- Tabela Produtos
CREATE TABLE Produtos (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(100),
    Modelo VARCHAR(100),
    Fabricante VARCHAR(100),
    Cor VARCHAR(50),
    Tam VARCHAR(50)
);

-- Tabela Clientes
CREATE TABLE Clientes (
    CPF VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    CEP VARCHAR(8),
    Email VARCHAR(255),
    Telefones VARCHAR(100)
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteCPF VARCHAR(11),
    Endereco VARCHAR(255),
    CEP VARCHAR(8),
    Itens TEXT,
    Qtdes TEXT,
    ValorPago DECIMAL(10, 2),
    FOREIGN KEY (ClienteCPF) REFERENCES Clientes(CPF)
);

-- PARTE 2
-- Inserção de registros na tabela Produtos
INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam) VALUES
(1,  'Tenis Casual', 'Masculino', 'Adidas', 'Preto,Cinza', '38,39,40,41'),
(2,  'Tenis Casual', 'Feminino', 'Nike', 'Branco,Rosa', '35,36,37,38'),
(3,  'Sapato Social', 'Masculino', 'Louis Vuitton', 'Preto,Marrom', '40,41,42'),
(4,  'Sapato Social', 'Feminino', 'Prada', 'Marrom,Vinho', '35,36,37'),
(5,  'Tenis Corrida', 'Masculino', 'Nike', 'Cinza,Preto', '39,40,41,42'),
(6,  'Tenis Corrida', 'Feminino', 'Adidas', 'Rosa,Branco', '36,37,38,39'),
(7,  'Chinelo', 'Masculino', 'Havaianas', 'Azul,Verde', '39,40,41'),
(8,  'Chinelo', 'Feminino', 'Havaianas', 'Vermelho,Amarelo', '36,37,38'),
(9,  'Sapato Social', 'Masculino', 'Gucci', 'Preto', '41,42,43'),
(10, 'Tenis Corrida', 'Feminino', 'Puma', 'Branco,Lilas', '37,38,39');


-- Insercao de registros na tabela Clientes
INSERT INTO Clientes (CPF, Nome, Endereco, CEP, Email, Telefones) VALUES
('111.111.111-11', 'Joao Silva', 'Rua das Flores, 123', '12345678', 'joao@example.com', '111111111'),
('222.222.222-22', 'Maria Oliveira', 'Av. Brasil, 456', '23456789', 'maria@example.com', '222222222'),
('333.333.333-33', 'Pedro Santos', 'Travessa Central, 789', '34567890', 'pedro@example.com', '333333333'),
('444.444.444-44', 'Ana Pereira', 'Rua do Sol, 101', '45678901', 'ana@example.com', '444444444'),
('555.555.555-55', 'Carlos Almeida', 'Praca da Liberdade, 202', '56789012', 'carlos@example.com', '555555555'),
('666.666.666-66', 'Beatriz Souza', 'Estrada Verde, 303', '67890123', 'beatriz@example.com', '666666666'),
('777.777.777-77', 'Lucas Costa', 'Av. Paulista, 404', '78901234', 'lucas@example.com', '777777777'),
('888.888.888-88', 'Fernanda Rodrigues', 'Rua da Praia, 505', '89012345', 'fernanda@example.com', '888888888'),
('999.999.999-99', 'Guilherme Barros', 'Av. das Palmeiras, 606', '90123456', 'guilherme@example.com', '999999999'),
('000.000.000-00', 'Juliana Lima', 'Rua das Estrelas, 707', '01234567', 'juliana@example.com', '000000000');

-- Insercao de registros na tabela Pedidos
INSERT INTO Pedidos (ClienteCPF, Endereco, CEP, Itens, Qtdes, ValorPago) VALUES
('111.111.111-11', 'Rua das Flores, 123', '12345678', '1,2', '3', 180.00), 
('222.222.222-22', 'Av. Brasil, 456', '23456789', '2,3', '4', 250.00),
('333.333.333-33', 'Travessa Central, 789', '34567890', '3,4,5', '6', 400.00),
('444.444.444-44', 'Rua do Sol, 101', '45678901', '4,6', '5', 500.00), 
('555.555.555-55', 'Praca da Liberdade, 202', '56789012', '5,7', '7', 550.00),
('666.666.666-66', 'Estrada Verde, 303', '67890123', '6,7,8', '6', 650.00),
('777.777.777-77', 'Av. Paulista, 404', '78901234', '7,8,9', '8', 750.00),
('888.888.888-88', 'Rua da Praia, 505', '89012345', '8,9', '9', 800.00),
('999.999.999-99', 'Av. das Palmeiras, 606', '90123456', '9,10', '10', 900.00),
('000.000.000-00', 'Rua das Estrelas, 707', '01234567', '10', '1', 100.00);

--PARTE 3
exit
-- quit
-- docker cp "/Users/jeffsantos/Desktop/9DTSR/Data Processing with Python/Exercicio1/produtos.csv" MySQL:/var/lib/mysql-files/produtos.csv
-- docker cp "/Users/jeffsantos/Desktop/9DTSR/Data Processing with Python/Exercicio1/clientes.csv" MySQL:/var/lib/mysql-files/clientes.csv
-- docker container exec -it MySQL bash
-- service mysql start 
-- mysql
use exercicio_1;

-- Insercao de registros na tabela Produtos
LOAD DATA INFILE '/var/lib/mysql-files/produtos.csv'
INTO TABLE Produtos
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Inserção de registros na tabela Clientes
LOAD DATA INFILE '/var/lib/mysql-files/clientes.csv'
INTO TABLE Clientes
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS 