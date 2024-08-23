## RIGHT JOIN

Um RIGHT JOIN é o oposto de um LEFT JOIN. Ele retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda. Se não houver correspondência, o resultado da tabela à esquerda será NULL.

Aqui está um exemplo de como criar uma nova tabela usando um RIGHT JOIN entre as tabelas Alunos e Cursos.

## Passo 1: Criar a nova tabela
Primeiro, vamos criar uma nova tabela chamada Cursos_Alunos_RightJoin para armazenar os resultados:

CREATE TABLE Cursos_Alunos_RightJoin (
    id_aluno INT,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100) PRIMARY KEY
);

## Passo 2: Inserir dados na nova tabela usando RIGHT JOIN
Agora, vamos inserir os dados na tabela Cursos_Alunos_RightJoin combinando as tabelas Alunos e Cursos com um RIGHT JOIN:

INSERT INTO Cursos_Alunos_RightJoin (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
RIGHT JOIN 
    Cursos C ON A.curso_id = C.id_curso;

## Explicação:
- RIGHT JOIN: Retorna todos os registros da tabela Cursos (à direita) e os registros correspondentes da tabela Alunos (à esquerda). Se um curso não tiver nenhum aluno associado, os campos id_aluno e nome_aluno retornarão NULL.

- SELECT: Seleciona as colunas id_aluno e nome da tabela Alunos, e a coluna nome da tabela Cursos. Esses dados são então inseridos na nova tabela Cursos_Alunos_RightJoin.

## Exemplo de Como Isso Funciona

Se houver um curso que não tenha nenhum aluno matriculado (curso_id em Alunos não tem correspondência), o curso ainda aparecerá na tabela Cursos_Alunos_RightJoin, mas com os campos id_aluno e nome_aluno vazios.

## Visualização dos Dados
Você pode visualizar os dados inseridos na nova tabela usando:

SELECT * FROM Cursos_Alunos_RightJoin;

Essa consulta mostrará todos os registros da tabela Cursos_Alunos_RightJoin, incluindo cursos que não têm alunos associados.


## Error Code: 1062. Duplicate entry 'Engenharia de Software' for key 'cursos_alunos_rightjoin.PRIMARY'

O erro "Duplicate entry" ocorre porque você está tentando inserir múltiplos registros com o mesmo valor para a chave primária nome_curso na tabela Cursos_Alunos_RightJoin. A chave primária exige valores únicos, e como nome_curso está sendo definido como a chave primária, isso não permite a repetição de nomes de cursos.

Para corrigir esse erro, podemos alterar a estrutura da tabela Cursos_Alunos_RightJoin, removendo a restrição de chave primária de nome_curso. Em vez disso, usaremos uma chave primária composta ou um campo de chave primária separado. Vou mostrar como fazer isso.

## Solução 1: Usando uma chave primária composta
Uma chave primária composta pode ser criada usando uma combinação de id_aluno e nome_curso, garantindo a unicidade dos registros combinados.

-- Criar a tabela sem uma chave primária definida previamente
CREATE TABLE Cursos_Alunos_RightJoin (
    id_aluno INT,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100),
    PRIMARY KEY (id_aluno, nome_curso) -- Chave primária composta
);

## Solução 2: Usando uma chave primária separada
Outra abordagem é adicionar uma coluna de id que serve como chave primária, permitindo que nome_curso contenha valores duplicados.

-- Criar a tabela com uma chave primária separada
CREATE TABLE Cursos_Alunos_RightJoin (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária autoincrementada
    id_aluno INT,
    nome_aluno VARCHAR(100),
    nome_curso VARCHAR(100)
);

## Inserir Dados com RIGHT JOIN
Independente da abordagem escolhida, a inserção dos dados será a mesma:

INSERT INTO Cursos_Alunos_RightJoin (id_aluno, nome_aluno, nome_curso)
SELECT 
    A.id_aluno,
    A.nome AS nome_aluno,
    C.nome AS nome_curso
FROM 
    Alunos A
RIGHT JOIN 
    Cursos C ON A.curso_id = C.id_curso;

## Conclusão
A escolha entre as duas soluções depende do que você deseja alcançar:

- Chave primária composta: Garante a unicidade para cada combinação de aluno e curso.
- Chave primária separada: Permite registros duplicados para nome_curso, útil se você não precisa que os nomes dos cursos sejam únicos.

Após essas mudanças, o erro de duplicidade não ocorrerá mais, e você poderá inserir os dados corretamente na nova tabela.