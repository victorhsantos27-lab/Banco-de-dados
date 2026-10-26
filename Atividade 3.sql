CREATE DATABASE sistema_pizzaria;  
USE sistema_pizzaria; 
CREATE TABLE cliente (
	id_cliente INT auto_increment primary key,
    nome VARCHAR (50),
    endereço VARCHAR (50),
    telefone INT
); 
CREATE TABLE pedidos (
	id_pedido INT auto_increment primary key,
    data_pedido DATE,
    descricao VARCHAR (100), 
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
); 
CREATE TABLE pizza (
	id_pizza INT auto_increment primary KEY, 
    nome VARCHAR (50),
    sabor VARCHAR (30),
    preco INT
); 
CREATE TABLE contém (
	id_pizza INT auto_increment primary key,
    id_pedido INT,
	FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido)
); 
INSERT INTO cliente (nome, endereco, telefone) VALUES
('João Silva', 'Rua das Flores, 100', '11987654321'),
('Maria Souza', 'Rua Central, 250', '11976543210'),
('Pedro Oliveira', 'Avenida Brasil, 500', '11965432109'),
('Ana Santos', 'Rua São Paulo, 80', '11954321098'),
('Lucas Costa', 'Rua das Palmeiras, 120', '11943210987');

INSERT INTO pedidos (data_pedido, descricao) VALUES
('2026-10-01', 'Pizza de calabresa'),
('2026-10-02', 'Pizza de queijo'),
('2026-10-03', 'Pizza de frango'),
('2026-10-04', 'Pizza de chocolate'),
('2026-10-05', 'Pizza portuguesa');

INSERT INTO pizza (nome, sabor, preco) VALUES
('Pizza Calabresa', 'Calabresa', 45),
('Pizza Queijo', 'Mussarela', 40),
('Pizza Frango', 'Frango com Catupiry', 50),
('Pizza Chocolate', 'Chocolate', 42),
('Pizza Portuguesa', 'Portuguesa', 48);