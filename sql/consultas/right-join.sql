-- RIGHT  JOIN

-- Um RIGHT JOIN é o oposto de um LEFT JOIN. Ele retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda. 

-- Criar a tabela sem uma chave primária definida previamente
CREATE TABLE Cursos_Alunos_RightJoin (
    id_aluno INT,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100),
    PRIMARY KEY (id_aluno, nome_curso) -- Chave primária composta
);

-- Criar a tabela com uma chave primária separada
CREATE TABLE Cursos_Alunos_RightJoin (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária autoincrementada
    id_aluno INT,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100)
);

SELECT * FROM Alunos;
SELECT * FROM Cursos;

-- Inserir dados na nova tabela usando RIGHT JOIN

INSERT INTO Cursos_Alunos_RightJoin (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
RIGHT JOIN 
    Cursos C ON A.curso_id = C.id_curso;

-- Visualização dos Dados

SELECT * FROM Cursos_Alunos_RightJoin;