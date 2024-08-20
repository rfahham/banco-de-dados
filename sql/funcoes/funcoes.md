# Funções de Agregação

- Count/Count*/DISTINCT
- SUM
- AVG
- MIM/MAX
- NULL

Permite criar cálculos com base nos dados

## COUNT

Contar a quantidade de linhas(clientes) de uma coluna

-- Contar a quantidade de linhas(clientes) de uma coluna
    SELECT
        COUNT(Nome)
    FROM clientes;

    COUNT = 100

Se houver campos NULL nas linhas o count irá ignorar na soma

    SELECT
        COUNT(Telefone)
    FROM clientes;

    COUNT = 94

Podemos usar o (*) pra contar a quantidade de linhas

    SELECT
        COUNT(*)
    FROM clientes;

    SELECT COUNT(*) FROM clientes;

    COUNT = 100

DISTINCT

Retorna a contagem distinta de valores de uma tabela

SELECT
    COUNT(DISTINCT Escolaridade)
FROM clientes;

Retorna 4, ou seja, existe 4 tipos de esolaridade na tabela


## SUM

-- Retorna a soma total dos valores de uma coluna

SELECT
    SUM(Receita_Venda)
FROM(pedidos);

## AVG

-- Retorna a média dos valores de uma coluna

SELECT
    AVG(Receita_Venda)
FROM(pedidos);

## MIN

-- Retorna o valor mínimo dos valores de uma coluna

SELECT
    MIN(Receita_Venda)
FROM(pedidos);

## MAX

-- Retorna o valor máximo dos valores de uma coluna

SELECT
    MAX(Receita_Venda)
FROM(pedidos);

-- Agregando todas as informações

SELECT
	SUM(Receita_Venda) AS 'Soma de Receita',
    MIN(Receita_Venda) AS 'Menor Receita',
    MAX(Receita_Venda) AS 'Maior Receita',
    AVG(Receita_Venda) AS 'Média de Receita'
FROM pedidos;

## NULL

Retornar a quantidade de linhas na tabela com valor NULL

SELECT COUNT(*) FROM clientes WHERE Telefone is null;

SELECT 
    COUNT(*) 
FROM clientes 
WHERE Telefone is null;

COUNT(*) = 6