SELECT nome_coluna AS titulo--Projeção de dados

SELECT * FROM nome_tabela WHERE nome_coluna LIKE '%A%'--Seleciona dados que contenham a regra especificada, começando a terminando com qualquer outra
SELECT * FROM nome_tabela WHERE nome_coluna LIKE '%_____A%'--Seleciona dados que contém cinco caracteres anteriores ao valor especificado
SELECT * FROM nome_tabela WHERE nome_coluna LIKE 'A%'--Seleciona dados que começam com o valor especificado mas terminam com qualquer outro