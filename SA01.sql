
-- Cria o banco de dados da biblioteca
CREATE DATABASE biblioteca;

-- Seleciona o banco de dados que será utilizado
USE biblioteca;

-- Cria a tabela de leitores
CREATE TABLE leitores (
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- Adiciona a coluna telefone na tabela leitores
ALTER TABLE Leitores
ADD telefone VARCHAR(20);

-- Cria a tabela de autores
CREATE TABLE autores (
    id_autores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(100),
    email VARCHAR(100)
);

-- Cria a tabela de livros e relaciona com autores
CREATE TABLE livros (
    id_livros INT AUTO_INCREMENT PRIMARY KEY,
    id_autores INT,
    genero VARCHAR(50),
    nome VARCHAR(100),
    FOREIGN KEY (id_autores) REFERENCES autores (id_autores)
);

-- Cria a tabela de empréstimos e relaciona com leitores
CREATE TABLE emprestimo (
    id_livros INT AUTO_INCREMENT PRIMARY KEY,
    id_leitor INT,
    data_retirada DATE,
    data_entrega DATE,
    FOREIGN KEY (id_leitor) REFERENCES leitores(id_leitor)
);

-- Insere cinco leitores na tabela
INSERT INTO leitores (nome, cidade, telefone)
VALUES
('Maria Silva', 'São Paulo', '11988887777'),
('João Souza', 'Campinas', '19999996666'),
('Ana Costa', 'Curitiba', '41987654321'),
('Carlos Pereira', 'Rio de Janeiro', '13245334555'),
('Bianca Britto', 'Barcelona', '13245334059');

-- Insere cinco autores na tabela
INSERT INTO autores (nome, cpf, email)
VALUES
('Pedro Almeida', '12345678901', 'pedro@email.com'),
('Juliana Martins', '23456789012', 'juliana@email.com'),
('Lucas Ferreira', '34567890123', 'lucas@email.com'),
('Mariana Oliveira', '45678901234', 'mariana@email.com'),
('Gabriel Santos', '56789012345', 'gabriel@email.com');

-- Insere cinco livros na tabela
INSERT INTO livros (genero, nome)
VALUES
('Romance', 'A Culpa é das Estrelas'),
('Fantasia', 'Harry Potter'),
('Aventura', 'Percy Jackson'),
('Suspense', 'A Garota no Trem'),
('Ficção científica', 'Jogos Vorazes');

-- Insere cinco empréstimos com as datas de retirada e entrega
INSERT INTO emprestimo (data_retirada, data_entrega)
VALUES
('2026-10-01', '2026-10-15'),
('2026-10-03', '2026-10-17'),
('2026-10-05', '2026-10-19'),
('2026-10-07', '2026-10-21'),
('2026-10-10', '2026-10-24');

-- Atualiza a cidade da leitora Maria Silva
UPDATE leitores
SET cidade = 'São Paulo'
WHERE nome = 'Maria Silva';

-- Exclui os leitores que moram em Barcelona
DELETE FROM leitores
WHERE cidade = 'Barcelona';
