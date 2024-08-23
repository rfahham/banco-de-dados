## LEFT JOIN

Aqui está um exemplo de como criar uma nova tabela usando um LEFT JOIN entre as tabelas Alunos e Cursos. O LEFT JOIN retorna todos os registros da tabela à esquerda (Alunos), e os registros correspondentes da tabela à direita (Cursos). Se não houver correspondência, o resultado da tabela à direita será NULL.

## Passo 1: Criar a nova tabela

Primeiro, vamos criar uma nova tabela chamada Alunos_Cursos_LeftJoin para armazenar os resultados:

CREATE TABLE Alunos_Cursos_LeftJoin (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100)
);

## Passo 2: Inserir dados na nova tabela usando LEFT JOIN

Agora, vamos inserir os dados na tabela Alunos_Cursos_LeftJoin combinando as tabelas Alunos e Cursos com um LEFT JOIN:

INSERT INTO Alunos_Cursos_LeftJoin (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
LEFT JOIN 
    Cursos C ON A.curso_id = C.id_curso;

## Explicação:

- LEFT JOIN: Retorna todos os registros da tabela Alunos (à esquerda) e os registros correspondentes da tabela Cursos (à direita). Se um aluno não estiver associado a nenhum curso, o campo nome_curso retornará NULL.

- SELECT: Seleciona as colunas id_aluno e nome da tabela Alunos, e a coluna nome da tabela Cursos. Esses dados são então inseridos na nova tabela Alunos_Cursos_LeftJoin.

## Exemplo de Como Isso Funciona
Se houver um aluno que não esteja matriculado em nenhum curso (curso_id em Alunos for NULL), ele ainda aparecerá na tabela Alunos_Cursos_LeftJoin, mas com o campo nome_curso vazio.

## Visualização dos Dados

Você pode visualizar os dados inseridos na nova tabela usando:

SELECT * FROM Alunos_Cursos_LeftJoin;

Essa consulta mostrará todos os registros da tabela Alunos_Cursos_LeftJoin, incluindo alunos que não têm um curso associado.