## Funções de agregação em SQL

São usadas para realizar cálculos em um conjunto de valores e retornar um único valor. Elas são amplamente utilizadas em consultas para sumarizar dados, como calcular médias, somas, contagens, etc. Abaixo estão algumas das funções de agregação mais comuns, com exemplos.

1. COUNT()
A função COUNT() conta o número de linhas em um conjunto de resultados.

Exemplo: Contando o número total de alunos:

SELECT COUNT(*) AS total_alunos
FROM Alunos;

Exemplo: Contando o número de alunos em um curso específico:

SELECT COUNT(*) AS total_alunos_engenharia
FROM Alunos
WHERE curso_id = 1;  

-- Supondo que o curso de Engenharia de Software tem id 1

2. SUM()
A função SUM() soma os valores de uma coluna numérica.

Exemplo: Somando a duração total de todos os cursos:

SELECT SUM(duracao) AS duracao_total
FROM Cursos;

3. AVG()
A função AVG() calcula a média dos valores de uma coluna numérica.

Exemplo: Calculando a média da duração dos cursos:

SELECT AVG(duracao) AS duracao_media
FROM Cursos;

4. MIN()
A função MIN() retorna o menor valor em uma coluna.

Exemplo: Encontrando a menor duração entre os cursos:

SELECT MIN(duracao) AS duracao_minima
FROM Cursos;

5. MAX()
A função MAX() retorna o maior valor em uma coluna.

Exemplo: Encontrando a maior duração entre os cursos:

SELECT MAX(duracao) AS duracao_maxima
FROM Cursos;

6. GROUP BY com funções de agregação
O GROUP BY é frequentemente usado em conjunto com funções de agregação para agrupar os resultados por uma ou mais colunas.

Exemplo: Contando o número de alunos por curso:

SELECT C.nome AS nome_curso, COUNT(A.id_aluno) AS total_alunos
FROM Alunos A
JOIN Cursos C ON A.curso_id = C.id_curso
GROUP BY C.nome;

7. HAVING com funções de agregação
O HAVING é usado para filtrar os grupos criados pelo GROUP BY com base nas condições especificadas.

Exemplo: Cursos com mais de 2 alunos matriculados:

-SELECT C.nome AS nome_curso, COUNT(A.id_aluno) AS total_alunos
FROM Alunos A
JOIN Cursos C ON A.curso_id = C.id_curso
GROUP BY C.nome
HAVING COUNT(A.id_aluno) > 2;

## Resumo
- COUNT(): Conta o número de registros.
- SUM(): Soma valores numéricos.
- AVG(): Calcula a média de valores numéricos.
- MIN(): Retorna o menor valor.
- MAX(): Retorna o maior valor.
- GROUP BY: Agrupa resultados.
- HAVING: Filtra grupos com base em condições de agregação.

Essas funções de agregação são fundamentais para análises e relatórios em SQL, permitindo sumarizar e extrair insights dos dados de maneira eficiente.
