-- NOT IN

-- Excluindo registros
-- Você também pode usar NOT IN para excluir registros que correspondem aos valores especificados:

-- Selecionando alunos que não estão nos cursos 2 ou 4
SELECT nome, curso_id
FROM Alunos
WHERE curso_id NOT IN (2, 4);

-- Esta consulta retorna os alunos que não estão matriculados nos cursos com id_curso 2 ou 4.