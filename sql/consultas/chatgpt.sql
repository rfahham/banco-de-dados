-- Criando o banco de dados
CREATE DATABASE IF NOT EXISTS Universidade;
USE Universidade;

-- Criando a tabela de Alunos
CREATE TABLE IF NOT EXISTS Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    genero ENUM('Masculino', 'Feminino', 'Outro'),
    curso_id INT
);

-- Inserindo registros na tabela de Alunos
INSERT INTO Alunos (nome, data_nascimento, genero, curso_id) VALUES
('João Silva', '2001-05-14', 'Masculino', 1),
('Maria Oliveira', '2000-08-22', 'Feminino', 2),
('Carlos Souza', '1999-11-11', 'Masculino', 3),
('Ana Pereira', '2002-03-05', 'Feminino', 1),
('Bruno Costa', '2001-01-20', 'Masculino', 4),
('Fernanda Lima', '2000-10-12', 'Feminino', 5),
('Paulo Mendes', '2002-12-30', 'Masculino', 2),
('Juliana Rocha', '1999-09-21', 'Feminino', 3),
('Ricardo Almeida', '2001-07-07', 'Masculino', 4),
('Sofia Santos', '2000-04-19', 'Feminino', 5);

SELECT * FROM Alunos;

-- Criando a tabela de Cursos
CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    duracao INT -- duração em anos
);

-- Inserindo registros na tabela de Cursos
INSERT INTO Cursos (nome, duracao) VALUES
('Engenharia de Software', 4),
('Direito', 5),
('Medicina', 6),
('Administração', 4),
('Arquitetura', 5);

SELECT * FROM Cursos;

-- Criando a tabela de Professores
CREATE TABLE IF NOT EXISTS Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(100)
);

-- Inserindo registros na tabela de Professores
INSERT INTO Professores (nome, departamento) VALUES
('Dr. Pedro Martins', 'Engenharia de Software'),
('Dra. Carla Nunes', 'Direito'),
('Dr. André Silva', 'Medicina'),
('Dra. Marcia Ribeiro', 'Administração'),
('Dr. Felipe Gomes', 'Arquitetura');

SELECT * FROM Professores;

-- Criando a tabela que relaciona Alunos e Cursos
ALTER TABLE Alunos 
ADD CONSTRAINT fk_curso
FOREIGN KEY (curso_id) REFERENCES Cursos(id_curso);

-- Criando a tabela de Relacionamento entre Cursos e Professores
CREATE TABLE IF NOT EXISTS Curso_Professor (
    id_curso INT,
    id_professor INT,
    PRIMARY KEY (id_curso, id_professor),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

-- Inserindo registros na tabela de Relacionamento Curso_Professor
INSERT INTO Curso_Professor (id_curso, id_professor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

SELECT * FROM Curso_Professor;

SELECT * FROM alunos
WHERE genero = 'Feminino';

SELECT * FROM alunos
WHERE genero = 'Masculino';
