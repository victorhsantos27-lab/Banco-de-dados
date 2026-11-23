CREATE DATABASE oficina_mecanica; 
USE oficina_mecanica; 
CREATE TABLE clientes (
	id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(100),
    data_cadastro DATE 
); 
CREATE TABLE servicos (
	id_servicos INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(150),
    categoria VARCHAR(100),
    preco DECIMAL(10,2) 
); 
CREATE TABLE veiculos ( 
	id_veiculos INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    placa VARCHAR(10),
    ano INT,
    id_clientes INT,
	FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes) 
); 
CREATE TABLE ordens_servicos (
	id_ordens_servicos INT AUTO_INCREMENT PRIMARY KEY,
    id_clientes INT,
	FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes),
    id_veiculos INT,
    FOREIGN KEY (id_veiculos) REFERENCES veiculos (id_veiculos),
    id_servicos INT,
    FOREIGN KEY (id_servicos) REFERENCES servicos (id_servicos),
    data_os DATE,
    quantidade int
);
INSERT INTO clientes (nome, telefone, cidade, data_cadastro) VALUES
('João Silva', '11987654321', 'São Paulo', '2026-11-01'),
('Maria Oliveira', '11976543210', 'Campinas', '2026-11-02'),
('Pedro Santos', '11965432109', 'Mococa', '2026-11-03'),
('Ana Souza', '11954321098', 'Ribeirão Preto', '2026-11-04'),
('Lucas Ferreira', '11943210987', 'Franca', '2026-11-05');

INSERT INTO servicos (descricao, categoria, preco) VALUES
('Corte de cabelo', 'Beleza', 35.00),
('Manicure', 'Estética', 25.00),
('Limpeza de pele', 'Estética', 80.00),
('Massagem relaxante', 'Bem-estar', 100.00),
('Hidratação capilar', 'Beleza', 60.00); 

INSERT INTO veiculos (modelo, placa, ano, id_clientes) VALUES
('Honda Civic', 'ABC1D23', 2022, 1),
('Toyota Corolla', 'DEF4G56', 2021, 2),
('Chevrolet Onix', 'HIJ7K89', 2023, 3),
('Volkswagen Gol', 'LMN1O23', 2020, 4),
('Fiat Argo', 'PQR4S56', 2024, 5); 

INSERT INTO ordens_servicos (id_clientes, id_veiculos, id_servicos, data_os, quantidade) VALUES
(1, 1, 1, '2026-11-01', 1),
(2, 2, 2, '2026-11-02', 2),
(3, 3, 3, '2026-11-03', 1),
(4, 4, 4, '2026-11-04', 1),
(5, 5, 5, '2026-11-05', 2); 

SELECT nome FROM clientes;
SELECT *FROM ordens_servicos
WHERE data_os > '2026-07-27'; 

UPDATE servicos
SET preco = 150.00
WHERE descricao = 'Revisão geral'; 

DELETE FROM veiculos
WHERE id_veiculos = 6; 

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade; 

SELECT categoria, COUNT(*) AS total_servicos
FROM servicos
GROUP BY categoria; 

SELECT id_clientes, COUNT(*) AS ordem_servicos
FROM ordens_servicos
GROUP BY id_clientes
HAVING COUNT(*) >= 1; 