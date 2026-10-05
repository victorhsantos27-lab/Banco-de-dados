-- Victor --
create database loja_virtual;
USE loja_virtual; 
CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(15),
    data_cadastro DATE 
);