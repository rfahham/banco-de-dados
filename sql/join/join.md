## JOIN

O JOIN (ou INNER JOIN) é o tipo de junção mais comum e retorna apenas os registros que possuem correspondência em ambas as tabelas. Aqui está um exemplo de como criar uma nova tabela usando um JOIN entre as tabelas Alunos e Cursos.

## Passo 1: Criar a nova tabela

Vamos criar uma nova tabela chamada Alunos_Cursos_Join para armazenar os resultados:

CREATE TABLE Alunos_Cursos_Join (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100)
);

## Passo 2: Inserir dados na nova tabela usando JOIN

Agora, vamos inserir os dados na tabela Alunos_Cursos_Join combinando as tabelas Alunos e Cursos com um JOIN:

INSERT INTO Alunos_Cursos_Join (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
JOIN 
    Cursos C ON A.curso_id = C.id_curso;

## Explicação:
- JOIN (ou INNER JOIN): Retorna apenas os registros que têm correspondência em ambas as tabelas Alunos (à esquerda) e Cursos (à direita). Se um aluno não tiver um curso associado, ele não será incluído nos resultados.

- SELECT: Seleciona as colunas id_aluno e nome da tabela Alunos, e a coluna nome da tabela Cursos. Esses dados são então inseridos na nova tabela Alunos_Cursos_Join.
Exemplo de Como Isso Funciona
Nesta junção, apenas os alunos que estão matriculados em um curso (ou seja, que possuem um curso_id válido) serão incluídos na tabela Alunos_Cursos_Join.

## Visualização dos Dados
Você pode visualizar os dados inseridos na nova tabela usando:

SELECT * FROM Alunos_Cursos_Join;

Essa consulta mostrará todos os registros da tabela Alunos_Cursos_Join, contendo apenas os alunos que têm um curso associado, juntamente com o nome do curso correspondente.
