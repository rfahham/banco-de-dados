# EXIST

O EXISTS é outra alternativa poderosa ao IN, principalmente quando usado em subconsultas. Ele verifica a existência de pelo menos um registro que satisfaz a condição especificada, podendo ser mais rápido que o IN nas situações onde a subconsulta retorna muitos registros.

SELECT coluna1, coluna2, ...
FROM tabela1
WHERE EXISTS (SELECT 1 FROM tabela2 WHERE condicao);



SELECT Nome, Sobrenome
FROM Clientes AS c
WHERE EXISTS (SELECT 1 FROM Pedidos AS p WHERE p.ID_cliente = c.id);