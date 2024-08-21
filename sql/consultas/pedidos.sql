-- Pedidos

-- Tabela com os dados dos pedidos(linha e colunas)
SELECT * FROM pedidos;

-- Selecionar por data
SELECT *
FROM pedidos
WHERE Data_Venda = "2019-01-01";

SELECT * 
FROM pedidos 
WHERE Data_Venda BETWEEN '2019-08-01' AND '2019-08-31';

-- Consulta a tabela de Pedidos e descubra a Receita total e Custo Total por ID-Loja
SELECT
	ID_Loja,
	SUM(Receita_Venda) AS 'Receita Total',
	SUM(Custo_Venda) AS 'Custo Total'
FROM pedidos
GROUP BY ID_loja;