-- Produtos

-- Tabela com os produtos (linha e colunas)
SELECT * FROM produtos;

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

-- Ordenar pelo preço (do menor para o maior)
-- Pode usar o ASC de ascendente
SELECT * From produtos
ORDER BY preco_Unit ASC;

-- Ordenar pelo preço (do maior para o menor)
-- Pode usar o DESC de ascendente
SELECT * From produtos
ORDER BY preco_Unit DESC;

-- Selecioanr apenas os produtos com preços iguais ou maiores que 1800
SELECT *
FROM produtos
WHERE Preco_Unit >= 1800;

-- Selecionar apenas os produtos do fabricante DELL
SELECT *
FROM produtos
WHERE Marca_Produto = "DELL";

-- Mostrar apenas produtos da marca DELL ou SAMSUNG
SELECT * 
FROM produtos
WHERE Marca_produto = 'DELL' OR Marca_produto = 'SAMSUNG';

-- Consulta tabela de produtos e filtra quantidade por marcas
SELECT
	Marca_produto,
	COUNT(*) AS 'Qtd. Fabricantes'
FROM produtos
GROUP BY Marca_produto;