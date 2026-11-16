
CREATE DATABASE comercio;


USE comercio;



CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2)
);



INSERT INTO produtos (nome, categoria, preco) VALUES
('Notebook', 'Eletrônicos', 3500.00),
('Mouse', 'Acessórios', 80.00),
('Teclado', 'Acessórios', 150.00),
('Monitor', 'Eletrônicos', 900.00),
('Celular', 'Eletrônicos', 2000.00);



UPDATE produtos
SET preco = 100.00
WHERE id = 2;



DELETE FROM produtos
WHERE id = 5;



SELECT * FROM produtos
WHERE categoria = 'Eletrônicos';