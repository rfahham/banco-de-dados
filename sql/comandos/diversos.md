# Alguns Comandos Úteis do MySQL

Para ver todas as tabelas da base de dados.

    show tables; 

Listar todas as bases de dados no servidor SQL.

    show databases; 

Para criar uma base de dados em um servidor SQL.

    create database [databasename]; 

Mudar de base de dados.

    use [db name]; 

Para ver os formatos dos campos.

    describe [table name]; 

Para apagar uma base de dados.

    drop database [database name]; 

Para apagar uma tabela.

    drop table [table name]; 

Para ver toda a informação de uma tabela.
    
    *SELECT FROM [table name];** 

Retornar a informação das colunas e as respectivas colunas da tabela especificada.

    show columns from [table name]; 

Ver campos específicos com o valor “valor dado”.

    *SELECT FROM [table name] WHERE [field name] = “valor dado”;** 

Ver todas as entradas que contenham o nome “Fulano” e o Numero de telefone ‘8585858′.

    *SELECT FROM [table name] WHERE name = “Fulano” AND phone_number = ‘8585858′;** 

Ver todas as entradas que contenham o nome “Abracadabra” e o número de telefone ‘6777777′ ordenadas pelo campo do telefone.

    *SELECT FROM [table name] WHERE name != “Abracadabra” AND phone_number = ‘6777777′ order by phone_number;** 

Ver todas as entradas que comecem pelas letras ‘joão’ e pelo telefone ‘6220980′.

    *SELECT FROM [table name] WHERE name like “Delva%” AND phone_number = ‘6220980′;** 

Mostrar entradas únicas.

    SELECT DISTINCT [column name] FROM [table name]; 

Mostrar entradas seleccionadas por ordem ascendente (asc) ou descentente (desc).

    SELECT [col1],[col2] FROM [table name] ORDER BY [col2] DESC; 

Retornar o número de colunas.

    *SELECT COUNT() FROM [table name];** 

*SELECT SUM() FROM [table name];** Somar as colunas.

INSERT INTO [table name] (Host,User,Password) VALUES(’%’,’user’,PASSWORD(’password’)); Mudar para a mysql db. Criar um novo utilizador.

SET PASSWORD FOR ‘user’@’hostname’ = PASSWORD(’passwordhere’); Mudar uma password de um utilizador.(da linha de comandos MySQL).

DELETE from [table name] where [field name] = ‘whatever’; Apagar linhas de uma tabela.

FLUSH PRIVILEGES; Atualizar permissões e previlégios de uma base de dados.

alter table [table name] drop column [column name]; Apagar uma Coluna.

alter table [table name] add column [new column name] varchar (20); Adicionar uma coluna a uma Base de Dados.

alter table [table name] change [old column name] [new column name] varchar (50); Mudar o nome de uma tabela.

alter table [table name] add unique ([column name]); Criar uma única coluna.

alter table [table name] modify [column name] VARCHAR(3); Criar uma coluna maior.

alter table [table name] drop index [colmn name]; Apagar unica de uma tabela.

[mysql dir]/bin/mysqldump -u root -ppassword –opt >/tmp/alldatabases.sql: Fazer um backup de todas as bases de dados.

[mysql dir]/bin/mysqldump -u username -ppassword –databases databasename >/tmp/databasename.sql: Fazer um backup de apenas uma base de dados.

[mysql dir]/bin/mysqldump -c -u username -ppassword databasename tablename > /tmp/databasename.tablename.sql : Fazer o backup de uma tabela de uma base de dados.

[mysql dir]/bin/mysql -u username -ppassword databasename < /tmp/databasename.sql: Restaurar uma base de dados (ou tabela) de um backup.

UPDATE NOME_DA_TABELA SET campo1 = valor1, campo2 = valor2. O comando update possui a sintaxe muito similar ao do INSERT, mas é utilizada para atualizar registros do banco de dados.