# Exercício de Modelagem e Manipulação de Dados - Data Architecture, Integration, and Ingestion

Este repositório contém os scripts e evidências do exercício desenvolvido para a disciplina **Data Architecture, Integration, and Ingestion**, abordando a modelagem, inserção de registros e importação de dados em diferentes bancos de dados. O exercício foi realizado utilizando **MySQL**, **Cassandra** e **MongoDB**.

## Estrutura do Exercício

### Parte 1: Criação das tabelas/coleções
- Modelagem das tabelas para um site de vendas de sapatos.
- **Entregas**:
  - Scripts para criação das tabelas em MySQL, Cassandra e MongoDB.

### Parte 2: Inserção de registros
- Inserção de 10 registros distintos em cada tabela.
- **Entregas**:
  - Scripts de inserção para MySQL, Cassandra e MongoDB.

### Parte 3: Carga de dados de arquivos CSV
- Integração de dados de um concorrente a partir de 2 arquivos CSV (20 produtos e 20 clientes).
- **Entregas**:
  - Arquivos CSV criados com base na modelagem definida.
  - Script de carga para o banco MySQL.

## Arquivos no Repositório

- **`script.sql`**:
  - Criação e manipulação de tabelas no **MySQL**.
- **`script.cql`**:
  - Criação e manipulação de tabelas no **Cassandra**.
- **`script.js`**:
  - Criação e manipulação de coleções no **MongoDB**.
- **CSV**:
  - Arquivos para carga de dados gerados na Parte 3.

## Execução dos Scripts

### MySQL
1. Execute o script `script.sql` em um ambiente MySQL configurado.
2. Insira os registros e carregue os dados dos arquivos CSV conforme indicado no script.

### Cassandra
1. Importe o script `script.cql` em um ambiente Cassandra configurado.
2. Insira os registros seguindo as instruções no arquivo.

### MongoDB
1. Configure o ambiente MongoDB com as instruções no início do script `script.js`.
2. Execute o script no MongoDB para criar coleções e inserir registros.

## Autores

- **Edinaldo Rodrigues de Oliveira Junior** (RM357067)  
- **Henrique Cardoso** (RM358158)  
- **Jefferson de Souza Santos** (RM358067)  
- **Walace Vinicius Silva dos Santos** (RM357344)
