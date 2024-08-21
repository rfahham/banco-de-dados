-- LIKE
-- Selecioanr todos os nomes que comecem com a letra B
SELECT Nome
FROM clientes
WHERE Nome LIKE 'C%';

-- Selecioanr todos os nomes que comecem com MAR
SELECT ID_Cliente, Nome FROM clientes
WHERE Nome LIKE 'MAR%';

-- Selecioanr todos os nomes que tenha MAR
SELECT ID_Cliente, Nome FROM clientes
WHERE Nome LIKE '%MAR%';
-- Tamara

-- Por padrão, a SQL diferencia caixa baixa de caixa alta. 
-- Para eliminar essa diferença, utiliza a função UPPER.

SELECT ID_Cliente, Nome FROM clientes
WHERE UPPER(Nome) LIKE 'RUBEN';



-- NOT LIKE
-- Selecioanr todos os nomes que não comecem com a letra B
SELECT Nome
FROM clientes
WHERE Nome NOT LIKE 'C%';

