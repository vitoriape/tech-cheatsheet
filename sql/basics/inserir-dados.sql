INSERT INTO nome_tabela(
    "valor_1", 
    "valor_2", 
    "valor_3", 
    "valor_4", 
    "valor_5");
--Insert com exclusão de colunas

INSERT INTO nome_tabela(
    campo_1, 
    campo_2, 
    campo_3, 
    campo_4, 
    campo_5
) VALUES (
    "valor_1", 
    "valor_2", 
    "valor_3", 
    "valor_4", 
    "valor_5");
--Insert destacando as colunas

INSERT INTO nome_tabela VALUES
    ("valor_1a", "valor_2a", "valor_3a", "valor_4a", "valor_5a"),
    ("valor_1b", "valor_2b", "valor_3b", "valor_4b", "valor_5b")
--Insert compacto (funciona somente no MYSQL)