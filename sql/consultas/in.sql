-- IN

-- O operador IN em SQL é usado para filtrar registros que correspondem a qualquer valor dentro de um conjunto especificado de valores. 
-- Aqui está um exemplo simples usando a tabela Alunos do Banco universidade

SELECT * FROM Cursos;

-- Selecionando alunos que estão matriculados em cursos específicos
SELECT nome, curso_id
FROM Alunos
WHERE curso_id IN (1, 3, 5);

-- Neste exemplo, a consulta retorna os alunos que estão matriculados nos cursos com id_curso 1, 3 ou 5.

-- Selecionando alunos cujos nomes estão em uma lista específica
SELECT nome, data_nascimento
FROM Alunos
WHERE nome IN ('João Silva', 'Maria Oliveira', 'Ana Pereira');

-- Aqui, a consulta retorna os dados de nascimento dos alunos cujos nomes são "João Silva", "Maria Oliveira" ou "Ana Pereira".

