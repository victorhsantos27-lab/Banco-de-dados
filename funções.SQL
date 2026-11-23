-- Funções de data e hora

SELECT NOW(); -- Retorna a data e a hora atual.
SELECT CURDATE(); -- Retorna a data atual.
SELECT CURTIME(); -- Retorna a hora atual.
SELECT YEAR(NOW()); -- Retorna somente o ano da data atual.
SELECT MONTH('2024-10-15'); -- Retorna o mês de uma data específica.
SELECT DAY('2024-10-15'); -- Retorna o dia de uma data específica.
SELECT DATE_ADD(NOW(), INTERVAL 7 DAY); -- Adiciona 7 dias à data e hora atual.
SELECT DATEDIFF('2026-11-16','2010-01-15'); -- Calcula a diferença em dias entre duas datas.

-- Funções matemáticas

SELECT ABS(-50); -- Retorna o valor absoluto, removendo o sinal negativo.
SELECT ROUND(19.567,2); -- Arredonda o número para 2 casas decimais.
SELECT CEIL(9.1); -- Arredonda o número para cima, resultando em 10.
SELECT FLOOR(9.9); -- Arredonda o número para baixo, resultando em 9.
SELECT POW(2,3); -- Calcula a potência de 2 elevado a 3.
SELECT RAND(); -- Gera um número aleatório entre 0 e 1. 
SELECT ROUND(RAND(), 2);

-- Funções de String 

SELECT UPPER('nome'); -- Transforma todas as letras em maiúsculas.
SELECT LOWER('NOME'); -- Transforma todas as letras em minúsculas.
SELECT LENGTH('SQL'); -- Retorna a quantidade de caracteres da palavra.
SELECT CONCAT('nome', '-', 'email'); -- Junta dois ou mais textos em uma única string.
SELECT SUBSTRING('nome',1,3); -- Retorna uma parte do texto, começando na posição 1 e pegando 3 caracteres.
SELECT REPLACE('nome da Silva', 'Silva', 'S.'); -- Substitui uma parte do texto por outra.
SELECT TRIM('João'); -- Remove os espaços em branco do início e do final do texto.

USE ecommerce;
SELECT COUNT(*) FROM clientes; -- Conta registros
SELECT SUM(preco) FROM produtos; -- Soma valores 
SELECT AVG(preco) FROM produtos; -- Média
SELECT MIN(preco) FROM produtos; -- Menor valor
SELECT MAX(preco) FROM produtos; -- Maior valor

ALTER TABLE produtos ADD COLUMN categoria VARCHAR(50); 
SELECT categoria, COUNT(*) AS total_produtos
FROM produtos
GROUP BY categoria;
SELECT categoria, AVG(preco) AS media_preco
FROM produtos
GROUP BY categoria;
SELECT categoria, MIN(preco) AS menor_preco, MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria; 

SELECT categoria, COUNT(*) AS total
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 1; 