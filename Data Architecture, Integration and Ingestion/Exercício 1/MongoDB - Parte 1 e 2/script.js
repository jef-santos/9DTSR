// Alunos:
// RM357067 - Edinaldo Rodrigues de Oliveira Junior
// RM358158 - Henrique Cardoso
// RM358067 - Jefferson de Souza Santos
// RM357344 - Walace Vinicius Silva dos Santos

// CONFIGURACAO DO AMBIENTE
// docker pull ivangancev/mongo:latest
// docker run --name MyMongo -it ivangancev/mongo bash
// mongod -f /etc/mongod.conf &
// mongosh

//PARTE 1
use exercicio_1

// Collection Produtos
db.createCollection("produtos")

// Collection Clientes
db.createCollection("clientes")

// Collection Pedidos
db.createCollection("pedidos")

// PARTE 2
// Tabela produtos
db.produtos.insertMany([
    {
        Codigo: 1,
        Nome: "Tenis Casual",
        Modelo: "Masculino",
        Fabricante: "Adidas",
        Cor: ["Preto", "Cinza"],
        Tam: [38, 39, 40, 41]
    },
    {
        Codigo: 2,
        Nome: "Tenis Casual",
        Modelo: "Feminino",
        Fabricante: "Nike",
        Cor: ["Branco", "Rosa"],
        Tam: [35, 36, 37, 38]
    },
    {
        Codigo: 3,
        Nome: "Sapato Social",
        Modelo: "Masculino",
        Fabricante: "Louis Vuitton",
        Cor: ["Preto", "Marrom"],
        Tam: [40, 41, 42]
    },
    {
        Codigo: 4,
        Nome: "Sapato Social",
        Modelo: "Feminino",
        Fabricante: "Prada",
        Cor: ["Marrom", "Vinho"],
        Tam: [35, 36, 37]
    },
    {
        Codigo: 5,
        Nome: "Tenis Corrida",
        Modelo: "Masculino",
        Fabricante: "Nike",
        Cor: ["Cinza", "Preto"],
        Tam: [39, 40, 41, 42]
    },
    {
        Codigo: 6,
        Nome: "Tenis Corrida",
        Modelo: "Feminino",
        Fabricante: "Adidas",
        Cor: ["Rosa", "Branco"],
        Tam: [36, 37, 38, 39]
    },
    {
        Codigo: 7,
        Nome: "Chinelo",
        Modelo: "Masculino",
        Fabricante: "Havaianas",
        Cor: ["Azul", "Verde"],
        Tam: [39, 40, 41]
    },
    {
        Codigo: 8,
        Nome: "Chinelo",
        Modelo: "Feminino",
        Fabricante: "Havaianas",
        Cor: ["Vermelho", "Amarelo"],
        Tam: [36, 37, 38]
    },
    {
        Codigo: 9,
        Nome: "Sapato Social",
        Modelo: "Masculino",
        Fabricante: "Gucci",
        Cor: ["Preto"],
        Tam: [41, 42, 43]
    },
    {
        Codigo: 10,
        Nome: "Tenis Corrida",
        Modelo: "Feminino",
        Fabricante: "Puma",
        Cor: ["Branco", "Lilas"],
        Tam: [37, 38, 39]
    }
]);

// Collection clientes
db.clientes.insertMany([
    {
        CPF: "111.111.111-11",
        Nome: "Joao Silva",
        Endereco: "Rua das Flores, 123",
        CEP: "12345678",
        Email: "joao@example.com",
        Telefones: ["111111111"]
    },
    {
        CPF: "222.222.222-22",
        Nome: "Maria Oliveira",
        Endereco: "Av. Brasil, 456",
        CEP: "23456789",
        Email: "maria@example.com",
        Telefones: ["222222222"]
    },
    {
        CPF: "333.333.333-33",
        Nome: "Pedro Santos",
        Endereco: "Travessa Central, 789",
        CEP: "34567890",
        Email: "pedro@example.com",
        Telefones: ["333333333"]
    },
    {
        CPF: "444.444.444-44",
        Nome: "Ana Pereira",
        Endereco: "Rua do Sol, 101",
        CEP: "45678901",
        Email: "ana@example.com",
        Telefones: ["444444444"]
    },
    {
        CPF: "555.555.555-55",
        Nome: "Carlos Almeida",
        Endereco: "Praca da Liberdade, 202",
        CEP: "56789012",
        Email: "carlos@example.com",
        Telefones: ["555555555"]
    },
    {
        CPF: "666.666.666-66",
        Nome: "Beatriz Souza",
        Endereco: "Estrada Verde, 303",
        CEP: "67890123",
        Email: "beatriz@example.com",
        Telefones: ["666666666"]
    },
    {
        CPF: "777.777.777-77",
        Nome: "Lucas Costa",
        Endereco: "Av. Paulista, 404",
        CEP: "78901234",
        Email: "lucas@example.com",
        Telefones: ["777777777"]
    },
    {
        CPF: "888.888.888-88",
        Nome: "Fernanda Rodrigues",
        Endereco: "Rua da Praia, 505",
        CEP: "89012345",
        Email: "fernanda@example.com",
        Telefones: ["888888888"]
    },
    {
        CPF: "999.999.999-99",
        Nome: "Guilherme Barros",
        Endereco: "Av. das Palmeiras, 606",
        CEP: "90123456",
        Email: "guilherme@example.com",
        Telefones: ["999999999"]
    },
    {
        CPF: "000.000.000-00",
        Nome: "Juliana Lima",
        Endereco: "Rua das Estrelas, 707",
        CEP: "01234567",
        Email: "juliana@example.com",
        Telefones: ["000000000"]
    }
]);

// Collection pedidos
db.pedidos.insertMany([
    {
        ClienteCPF: "111.111.111-11",
        Endereco: "Rua das Flores, 123",
        CEP: "12345678",
        Itens: [1, 2],
        Qtdes: [3],
        ValorPago: 180.00
    },
    {
        ClienteCPF: "222.222.222-22",
        Endereco: "Av. Brasil, 456",
        CEP: "23456789",
        Itens: [2, 3],
        Qtdes: [4],
        ValorPago: 250.00
    },
    {
        ClienteCPF: "333.333.333-33",
        Endereco: "Travessa Central, 789",
        CEP: "34567890",
        Itens: [3, 4, 5],
        Qtdes: [6],
        ValorPago: 400.00
    },
    {
        ClienteCPF: "444.444.444-44",
        Endereco: "Rua do Sol, 101",
        CEP: "45678901",
        Itens: [4, 6],
        Qtdes: [5],
        ValorPago: 500.00
    },
    {
        ClienteCPF: "555.555.555-55",
        Endereco: "Praca da Liberdade, 202",
        CEP: "56789012",
        Itens: [5, 7],
        Qtdes: [7],
        ValorPago: 550.00
    },
    {
        ClienteCPF: "666.666.666-66",
        Endereco: "Estrada Verde, 303",
        CEP: "67890123",
        Itens: [6, 7, 8],
        Qtdes: [6],
        ValorPago: 650.00
    },
    {
        ClienteCPF: "777.777.777-77",
        Endereco: "Av. Paulista, 404",
        CEP: "78901234",
        Itens: [7, 8, 9],
        Qtdes: [8],
        ValorPago: 750.00
    },
    {
        ClienteCPF: "888.888.888-88",
        Endereco: "Rua da Praia, 505",
        CEP: "89012345",
        Itens: [8, 9],
        Qtdes: [9],
        ValorPago: 800.00
    },
    {
        ClienteCPF: "999.999.999-99",
        Endereco: "Av. das Palmeiras, 606",
        CEP: "90123456",
        Itens: [9, 10],
        Qtdes: [10],
        ValorPago: 900.00
    },
    {
        ClienteCPF: "000.000.000-00",
        Endereco: "Rua das Estrelas, 707",
        CEP: "01234567",
        Itens: [10],
        Qtdes: [1],
        ValorPago: 100.00
    }
]);


