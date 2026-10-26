CREATE DATABASE escola;
USE escola; 
CREATE TABLE alunos (
	id_aluno  INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50),
    emai VARCHAR (100),
    cpf INT
);
CREATE TABLE cursos (
	id_curso INT auto_increment PRIMARY KEY,
    disciplina VARCHAR (50),
    id_aluno INT, 
    FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno)
); 
CREATE TABLE professores (
	id_professor INT auto_increment PRIMARY KEY,
    nome VARCHAR(50),
	email VARCHAR (100),
	cpf VARCHAR (15),
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES cursos (id_curso) 
); 
CREATE TABLE alunoCurso (
	id_alunoCurso INT auto_increment PRIMARY KEY,
    semestre VARCHAR(30),
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno),
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES cursos (id_curso)
);
INSERT INTO alunos (nome, emai, cpf) VALUES
('João Silva', 'joao@gmail.com', 123456789),
('Maria Souza', 'maria@gmail.com', 234567890),
('Pedro Oliveira', 'pedro@gmail.com', 345678901),
('Ana Santos', 'ana@gmail.com', 456789012),
('Lucas Costa', 'lucas@gmail.com', 567890123); 
INSERT INTO cursos (disciplina) VALUES
('Matemática'),
('Português'),
('Programação'),
('Banco de Dados'),
('Redes de Computadores'); 
INSERT INTO professores (nome, email, cpf) VALUES
('Carlos Almeida', 'carlos@gmail.com', '12345678901'),
('Fernanda Lima', 'fernanda@gmail.com', '23456789012'),
('Rafael Martins', 'rafael@gmail.com', '34567890123'),
('Juliana Rocha', 'juliana@gmail.com', '45678901234'),
('Marcos Pereira', 'marcos@gmail.com', '56789012345'); 
INSERT INTO alunoCurso (semestre) VALUES
('1º Semestre'),
('2º Semestre'),
('1º Semestre'),
('2º Semestre'),
('1º Semestre'); 
