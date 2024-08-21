# Criando Curso

## Criando Banco

```bash
CREATE DATABASE curso;
Query OK, 1 row affected (0.04 sec)
```

## Selecionando o banco que vai ser utilizado

```bash
USE curso;
```

## Criando a Tabela

```bash
CREATE TABLE alunos (aluno_id int, Nome text, Email text);
```

```bash
CREATE TABLE cursos (curso_id int, Nome text);
```

```bash
CREATE TABLE matricula (matricula_id int, aluno_id int, curso_id int, data text, tipo text);
```

## Listar todas as tabelas

```bash
show tables;
```

## Adicionando dados na tabela alunos

```bash
INSERT INTO alunos(aluno_id, Nome, Email)
VALUES
    (1, 'João da Silva', 'joao@dasilva.com'),
    (2, 'Frederico José', 'fred@jose.com'),
    (3, 'Alberto Santos', 'alberto@santos.com'),
    (4, 'Renata Alonso', 'renata@alonso.com'),
    (5, 'Paulo da Silva', 'paulo@dasilva.com'),
    (6, 'Carlos Cunha', 'carlos@cunha.com'),
    (7, 'Paulo José', 'paulo@jose.com'),
    (8, 'Manoel Santos', 'manoel@santos.com'),
    (9, 'Renata Ferreira', 'renata@ferreira.com'),
    (10, 'Paula Soares', 'paula@soares.com'),
    (11, 'Jose da Silva', 'jose@dasilva.com'),
    (12, 'Danilo Cunha', 'danilo@cunha.com'),
    (13, 'Zilmira José', 'Zilmira@jose.com'),
    (14, 'Cristaldo Santos', 'cristaldo@santos.com'),
    (15, 'Osmir Ferreira', 'osmir@ferreira.com'),
    (16, 'Claudio Soares', 'claudio@soares.com');
```

## Visualizar dados

```bash
SELECT * FROM alunos;
```

## Adicionando dados na tabela cursos

```bash
INSERT INTO cursos(curso_id, Nome)
VALUES
    (1, 'python'),
    (2, 'javascript'),
    (3, 'go');
```

## Visualizar dados

```bash
SELECT * FROM cursos;
```

## Adicionando dados na tabela matricula

```bash
INSERT INTO matricula(matricula_id, aluno_id, curso_id, data, tipo)
VALUES
    (1, 1, 1, '2024-08-01', 'credito'),
    (2, 3, 2, '2024-08-01', 'debito'),
    (3, 2, 3, '2024-08-01', 'pix'),
    (4, 6, 3, '2024-08-01', 'credito'),
    (5, 5, 2, '2024-08-01', 'debito'),
    (6, 4, 1, '2024-08-01', 'pix'),
    (7, 16, 1, '2024-08-02', 'pix'),
    (8, 10, 2, '2024-08-02', 'pix'),
    (9, 7, 3, '2024-08-02', 'pix'),
    (10, 9, 2, '2024-08-02', 'credito'),
    (11, 11, 1, '2024-08-02', 'debito'),
    (12, 14, 3, '2024-08-02', 'pix');
```

## Visualizar dados

```bash
SELECT * FROM matricula;
```
