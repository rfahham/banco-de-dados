# Comandos

## DDL (Data Definition Language)

Os comandos DDL são usados para definir a estrutura do banco de dados:

- CREATE: cria objetos de banco de dados, como tabelas, índices, visões e procedimentos armazenados.
- ALTER: modifica a estrutura de objetos de banco de dados existentes, como adicionar ou remover colunas de tabelas.
- DROP: exclui objetos de banco de dados, como tabelas, índices ou visões.
- TRUNCATE: Remove todos os registros de uma tabela, mas mantém sua estrutura.

## DQL (Data Query Language)

Os comandos DQL são usados para consultas:

- SELECT: recupera dados de uma ou mais tabelas do banco de dados. É o comando principal para consultas.

## DML (Data Manipulation Language)
Os comandos DML são usados para manipular os dados:

- INSERT: adiciona novos registros a uma tabela.
- UPDATE: modifica registros existentes em uma tabela.
- DELETE: remove registros de uma tabela.

## DCL (Data Control Language)
Os comandos DCL controlam permissões de acesso e os comandos:

- GRANT: Concede permissões a usuários ou funções para acessar objetos de banco de dados.
- REVOKE: Remove permissões previamente concedidas a usuários

## TCL (Transaction Control Language)
Os comandos TCL gerenciam transações:

- COMMIT: Confirma uma transação, tornando as alterações permanentes no banco de dados.
- ROLLBACK: Desfaz uma transação e restaura o banco de dados ao estado anterior.
- SAVEPOINT: Define um ponto de salvamento em uma transação, permitindo o rollback parcial.
- SET TRANSACTION: Define características de transação, como isolamento e nível de isolamento.
