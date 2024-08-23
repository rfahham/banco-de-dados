# ChatGPT para Criar Banco de Dados MySQL

Para começar, acesse o site do ChatGPT e envie o seguinte comando:

“Forneça um script que cria um banco de dados sql dentro do mysql workbench. Esse banco de dados deve ser composto por tabelas de uma universidade, contendo:

– Lista de alunos (mínimo de 10 registros)
– Lista de cursos (mínimo de 5 registros)
– Lista de professores (mínimo de 5 registros)

Além disso, forneça tabelas que relacionem estes elementos dentro do banco de dado.”

https://chatgpt.com/c/ceb1e691-2265-4d50-866d-2855e3e1fe10

## Estrutura do Banco de Dados:

1. Tabela `Alunos`:

- id_aluno: Identificador único do aluno.
- nome: Nome do aluno.
- data_nascimento: Data de nascimento do aluno.
- genero: Gênero do aluno.
- curso_id: Chave estrangeira referenciando o curso do aluno.

2 Tabela `Cursos`:

- id_curso: Identificador único do curso.
- nome: Nome do curso.
- duracao: Duração do curso em anos.

3. Tabela `Professores`:

- id_professor: Identificador único do professor.
- nome: Nome do professor.
- departamento: Departamento do professor.

4. Tabela `Curso_Professor` (Relacionamento entre Cursos e Professores):

- id_curso: Chave estrangeira referenciando o curso.
- id_professor: Chave estrangeira referenciando o professor.

Notas:

- As tabelas estão relacionadas da seguinte forma:
    - A tabela `Alunos` está relacionada com `Cursos` através de `curso_id`.
    - A tabela `Curso_Professor` faz a relação entre os cursos e os professores.

Esse script fornece uma estrutura básica para gerenciar os dados de uma universidade com as informações solicitadas.