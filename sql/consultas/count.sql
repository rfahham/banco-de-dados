-- COUNT

-- Contar a quantidade de linhas da tabela clientes
SELECT
    COUNT(Nome)
FROM clientes;

-- ou 
SELECT
    COUNT(*)
FROM clientes;

-- RESUTLTADO 100

-- Contar a quantidade de linhas da tabela e coluna Telefone
SELECT
    COUNT(Telefone)
FROM clientes;
-- RESUTLTADO 94

-- Retorna a contagem distinta de valores de uma tabela, tem 4 tipos
SELECT
    COUNT(DISTINCT Escolaridade)
FROM clientes;

-- Retorna a soma total dos valores de uma coluna
SELECT
    SUM(Receita_Venda)
FROM(pedidos);

-- Retorna a média total dos valores de uma coluna
SELECT
    AVG(Receita_Venda)
FROM(pedidos);

-- Retorna o valor mínimo dos valores de uma coluna
SELECT
    MIN(Receita_Venda)
FROM(pedidos);

-- Retorna o valor máximo dos valores de uma coluna
SELECT
    MAX(Receita_Venda)
FROM(pedidos);

-- Retorna a quantidade de linhas em branco na coluna Telefone
SELECT
    COUNT(*)
FROM clientes
WHERE Telefone = '';

-- Retorna a quantidade de linhas em branco ou null de uma coluna 
SELECT COUNT(*) FROM clientes WHERE Telefone is null;

-- Agregando todas as informações
SELECT
	SUM(Receita_Venda) AS 'Soma de Receita',
    MIN(Receita_Venda) AS 'Menor Receita',
    MAX(Receita_Venda) AS 'Maior Receita',
    AVG(Receita_Venda) AS 'Média de Receita'
FROM pedidos;