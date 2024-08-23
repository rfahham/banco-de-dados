-- JOIN, utilizado para juntar colunas de duas tabelas

-- BANCO: banco
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


-- BANCO: Universidade
-- Para criar uma nova tabela combinando informações das tabelas Alunos e Cursos usando um JOIN.

CREATE TABLE Alunos_Cursos (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100)
);

-- Inserir dados na nova tabela usando JOIN
-- Agora, vamos inserir os dados na tabela Alunos_Cursos combinando as tabelas Alunos e Cursos com um INNER JOIN

INSERT INTO Alunos_Cursos (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
INNER JOIN 
    Cursos C ON A.curso_id = C.id_curso;
    
SELECT * FROM Alunos_Cursos;

-- Explicação:
-- INNER JOIN: Combina registros das tabelas Alunos (apelidada como A) e Cursos (apelidada como C) onde há uma correspondência entre curso_id em Alunos e id_curso em Cursos.
-- SELECT: Seleciona as colunas id_aluno e nome da tabela Alunos, e a coluna nome da tabela Cursos. Esses dados são então inseridos na nova tabela Alunos_Cursos.