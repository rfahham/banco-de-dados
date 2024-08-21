-- WHERE

SELECT * FROM clientes;

-- A cláusula Where permite ao comando SQL passar condições de filtragem.

-- Da Tabela clientes retornar o Nome do cliente que tem o ID 10
SELECT ID_Cliente, Nome FROM clientes
WHERE ID_Cliente = 10;

-- Da Tabela clientes retornar só Nome dos clientes
SELECT ID_Cliente, Nome FROM clientes;

-- Da Tabela clientes retornar só Nome dos clientes que estejam entre o ID 10 e 50
SELECT ID_Cliente, Nome FROM clientes
WHERE ID_Cliente >= 10 AND ID_Cliente <= 50;

-- Da Tabela clientes retornar só Nome dos clientes que estejam casados e do sexo Masculino
SELECT ID_Cliente, Nome FROM clientes
WHERE Estado_Civil = 'C' OR Sexo = 'M';

-- Da Tabela clientes retornar só Nome dos clientes que estejam com os campos email e Telefone vazios ou nulos
SELECT ID_Cliente, Nome FROM clientes
WHERE (email IS NULL) OR (Telefone IS NULL)

