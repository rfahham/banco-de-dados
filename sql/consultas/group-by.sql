-- GROUP BY

SELECT * FROM pedidos;

SELECT ID_Cliente FROM pedidos;

-- Somente os clientes com 9 ou mais pedidos serão selecionados
SELECT ID_Cliente, COUNT(*)
FROM pedidos
GROUP BY ID_Cliente
HAVING COUNT(*) >= 2;

-- CLientes que tem 2 ou mais pedidos depois da data selecionada
SELECT ID_Cliente, COUNT(*)
FROM pedidos
WHERE Data_Venda > '2019-12-01'
GROUP BY ID_Cliente
HAVING COUNT(*) >= 2;