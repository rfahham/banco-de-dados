-- LEFT JOIN
-- Aqui está um exemplo de como criar uma nova tabela usando um LEFT JOIN entre as tabelas Alunos e Cursos. 

-- Criar a nova tabela
CREATE TABLE Alunos_Cursos_LeftJoin (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100)
);

-- Inserir dados na nova tabela usando LEFT JOIN

INSERT INTO Alunos_Cursos_LeftJoin (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
LEFT JOIN 
    Cursos C ON A.curso_id = C.id_curso;

-- Visualização dos Dados

SELECT * FROM Alunos_Cursos_LeftJoin;