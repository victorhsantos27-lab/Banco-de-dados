SELECT nome, cidade, estado
FROM clientes
WHERE estado = 'SP'
ORDER BY nome;
SELECT * FROM produtos;
SELECT DISTINCT cidade FROM clientes;
SELECT * FROM clientes LIMIT 2;	
SELECT * FROM clientes WHERE cidade = 'São Paulo'; 
SELECT * FROM produtos WHERE preco != 132;
SELECT * FROM produtos WHERE preco > 300;
SELECT * FROM produtos WHERE estoque < 10;
SELECT * FROM produtos WHERE preco >= 132;
SELECT * FROM produtos WHERE preco <= 132;
SELECT * FROM produtos WHERE nome = 'Notebook Dell' AND preco > 4000; 
SELECT * FROM clientes WHERE estado = 'SP' OR estado = 'RJ'; 
SELECT * FROM clientes WHERE NOT estado = 'SP';
SELECT * FROM produtos WHERE preco BETWEEN 10 and 1000;
SELECT * FROM clientes WHERE estado IN ('SP', 'RJ', 'BH');
SELECT * FROM produtos WHERE nome LIKE 'N%';
SELECT * FROM clientes WHERE telefone IS NULL;