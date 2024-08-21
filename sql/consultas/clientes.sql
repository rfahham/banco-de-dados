-- Clientes

-- Tabela com os dados dos clientes(linha e colunas)
SELECT * FROM clientes;

-- Descrever a tabela de clientes
DESC clientes;

-- Selecionar colunas na Tabela clientes
SELECT ID_Cliente, Nome, Data_Nascimento, Email FROM clientes;

-- Selecionar algumas linhas da tabela
SELECT * From clientes
LIMIT 5;

-- Filtrar por Clientes por sexo
SELECT
    Sexo,
    COUNT(*) AS 'Qtd. Clientes'
FROM Clientes
GROUP BY Sexo;

-- Selecioanr apenas os cliente so sexo feminino da tabela clientes
SELECT *
FROM clientes
WHERE Sexo = "F";

-- Mostrar apenas clientes do sexo Masculino e Solteiros
SELECT * 
FROM clientes
WHERE Estado_civil = 'S' AND Sexo = 'M';

-- Somente os clientes com 2 ou mais pedidos serão selecionados. 
SELECT 
	ID_Cliente, 
    COUNT(*)
FROM pedidos 
GROUP BY ID_Cliente
HAVING COUNT(*) >= 2;

-- CLientes que tem 2 ou mais pedidos depois da data selecionada
SELECT ID_Cliente, COUNT(*)
FROM pedidos
WHERE Data_Venda > '2019-12-01'
GROUP BY ID_Cliente
HAVING COUNT(*) >= 2;