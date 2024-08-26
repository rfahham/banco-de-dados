-- Cirando tabela de usuários

SHOW databases;

Use wrfsolutions;

SELECT * FROM clientes;

CREATE TABLE IF NOT EXISTS usuarios (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    role VARCHAR(100),
    data_criação DATE
    );

INSERT INTO usuarios (nome, role, data_criação) VALUES
('João Silva', 'admin', '2001-05-14'),
('Maria Oliveira', 'po', '2000-08-22'),
('Carlos Souza', 'dev', '1999-11-11'),
('Ana Pereira', 'ceo', '2002-03-05'),
('Bruno Costa', 'ux', '2001-01-20'),
('Fernanda Lima', 'dev', '2000-10-12'),
('Paulo Mendes', 'cto', '2002-12-30'),
('Juliana Rocha', 'qa', '1999-09-21'),
('Ricardo Almeida', 'sm', '2001-07-07'),
('Sofia Santos', 'dev', '2000-04-19');

SELECT * FROM usuarios;

-- fazer um count antes da mudança

SELECT
    COUNT(*)
FROM users
WHERE role = 'admin';

-- Proteger a tabela
start transaction;
-- Para remover a proteção ir em Edit/Preferências/SQL Editor/ Desmarcar Safe Updates

update usuarios set role = 'analista';

SELECT * FROM usuarios;

rollback;

SELECT * FROM usuarios;

-- Atualizando dados de um coluna
UPDATE usuarios
SET role = 'admin'
WHERE id_user = 1;

SELECT * FROM usuarios;

-- Alterar nome da tabela

RENAME TABLE usuarios TO users;

SELECT * FROM users;