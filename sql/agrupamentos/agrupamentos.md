# Criando agrupamentos

- GROUP BY

Utilizado para criar agrupamentos, ou seja, tabelas resumo das tabelas principais.

-- Filtrar por Clientes por sexo

    SELECT
        Sexo,
        COUNT(*) AS 'Qtd. Clientes'
    FROM Clientes
    GROUP BY Sexo;

-- Consulta tabela de produtos e filtra por marcas

    SELECT
	    Marca_produto,
	    COUNT(*) AS 'Qtd. Fabricantes'
    FROM produtos
    GROUP BY Marca_produto;


-- Consulta a tabela de Pedidos e descubra a Receita total e Custo Total por ID-Loja

    SELECT
        ID_Loja,
        SUM(Receita_Venda) AS 'Receita Total',
        SUM(Custo_Venda) AS 'Custo Total'
    FROM pedidos
    GROUP BY ID_loja;