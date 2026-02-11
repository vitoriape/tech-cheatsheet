mysqldump -u root -p -P NÚMERO_DA_PORTA --databases NOME_DA_TABLE > NOME_DO_BACKUP.sql
mysql -u root -p -P NÚMERO_DA_PORTA < NOME_DO_BACKUP.sql