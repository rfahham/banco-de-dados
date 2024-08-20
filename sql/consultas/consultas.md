# Consultas

- SELECT
- SELECT *
- SELECT FROM
- SELECT AS
- SELECT LIMIT
- ORDER BY

## SELECT *

Selecionar todas as colunas e linhas de uma tabela

    SELECT *
    FROM Tabela;

Selecionando Colunas

    SELECT Col1, Col2
    FROM Tabela,

Selecionar e dar nomes as colunas

    SELECT 
        Col1 AS "Coluna1",
        Col2 AS "Coluna2"
    FROM Tabela;

Selecionr determinadas linhas

    SELECT
        *
    From Tabela
    LIMIT 2;

Selecioanr por ordem do menor para o maior

    SELECT
        *
    FROM Tabela
    ORDER BY Col3;

Selecioanr por ordem do maior para o menor

    SELECT
        *
    FROM Tabela
    ORDER BY Col3 DESC;

    Observação

    No caso de ter vários bancos, precisa setar o banco que irá usar como default

    Clicar com o botão direito do mouse sobre o nome do banco e depois clicar em `Set as Default Schema`



-- Tabela com os dados dos clientes(linha e colunas)
    
    SELECT * FROM clientes;

-- Tabela com os produtos (linha e colunas)

    SELECT * FROM produtos;

-- Selecionar colunas na Tabela clientes
    
    SELECT ID_Cliente, Nome, Data_Nascimento, Email FROM clientes;

-- Selecionar colunas na Tabela produtos
    
    SELECT ID_Produto, Nome_Produto FROM produtos;

-- Selecionar colunas na Tabela produtos (indentado)

    SELECT 
        ID_Produto, 
        Nome_Produto 
    FROM produtos;

-- Selecionar colunas na Tabela produtos (indentado) e modificando o nome das colunas

    SELECT 
        ID_Produto AS ID_PRODUTO, 
        Nome_Produto AS NOME_PRODUTO
    FROM produtos;

-- Selecionar algumas linhas
    
    SELECT * From produtos
    LIMIT 5;

    SELECT * From clientes
    LIMIT 5;

-- Ordenar pelo preço (do menor para o maior)
-- Pode usar o ASC de ascendente
    
    SELECT * From produtos
    ORDER BY preco_Unit ASC;

-- Ordenar pelo preço (do maior para o menor)
-- Pode usar o DESC de ascendente
    
    SELECT * From produtos
    ORDER BY preco_Unit DESC;

