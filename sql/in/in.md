# IN

> Introdução ao Operador IN no SQL: Definição e Utilidades

O operador IN em SQL é usado para filtrar registros que correspondem a qualquer valor dentro de um conjunto especificado de valores. Aqui está um exemplo simples usando a tabela Alunos do script anterior:

Exemplo 1: Selecionando alunos de cursos específicos


## Selecionando alunos que estão matriculados em cursos específicos

    SELECT nome, curso_id
    FROM Alunos
    WHERE curso_id IN (1, 3, 5);

Neste exemplo, a consulta retorna os alunos que estão matriculados nos cursos com id_curso 1, 3 ou 5.

## Exemplo 2: Selecionando alunos por nome

-- Selecionando alunos cujos nomes estão em uma lista específica
    
    SELECT nome, data_nascimento
    FROM Alunos
    WHERE nome IN ('João Silva', 'Maria Oliveira', 'Ana Pereira');

Aqui, a consulta retorna os dados de nascimento dos alunos cujos nomes são "João Silva", "Maria Oliveira" ou "Ana Pereira".

## Exemplo 3: Excluindo registros com NOT IN
Você também pode usar NOT IN para excluir registros que correspondem aos valores especificados:

-- Selecionando alunos que não estão nos cursos 2 ou 4
    
    SELECT nome, curso_id
    FROM Alunos
    WHERE curso_id NOT IN (2, 4);

Esta consulta retorna os alunos que não estão matriculados nos cursos com id_curso 2 ou 4.

O operador IN é útil para substituir várias condições OR e tornar a consulta mais legível e eficiente.