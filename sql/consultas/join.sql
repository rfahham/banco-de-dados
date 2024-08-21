-- JOIN
-- Juntar colunas de duas tabelas

SELECT * FROM categorias;

SELECT
    pedidos.*,
    lojas.Loja,
    lojas.Gerente,
    lojas.Telefone
FROM
    pedidos
INNER JOIN lojas
    ON pedidos.ID_Loja = lojas.ID_Loja;

SELECT 
	categorias.*,
    lojas.Loja,
    lojas.Gerente,
    lojas.Telefone
FROM categorias
INNER JOIN lojas
	ON categorias.Categoria = lojas.ID_Loja;
    
SELECT 
	produtos.*,
    categorias.Categoria
FROM 
	produtos
INNER JOIN categorias
	ON produtos.Nome_Produto = categorias.Categoria;
    