-- Incluir uma nova coluna em uma tabela existente

-- ALTER TABLE nome_Da_Tabela ADD nome_Da_coluna_Nome dataType
ALTER TABLE users ADD salario int;

SELECT * FROM users;

-- Alterar somente o salário do admin pelo ID
UPDATE users
SET salario = 10000
WHERE id_user = 1;

-- Alterar somente o salário do admin pela ROLE
UPDATE users
SET salario = 15000
WHERE role = 'admin';

-- Alterar o saário de todos os devs
UPDATE users
SET salario = 50000
WHERE role = 'ceo';

SELECT * FROM users;