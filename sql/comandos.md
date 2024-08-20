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

## HELP

mysql> help

For information about MySQL products and services, visit:
   http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
   http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
   https://shop.mysql.com/

List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
?         (\?) Synonym for `help'.
clear     (\c) Clear the current input statement.
connect   (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
ego       (\G) Send command to mysql server, display result vertically.
exit      (\q) Exit mysql. Same as quit.
go        (\g) Send command to mysql server.
help      (\h) Display this help.
notee     (\t) Don't write into outfile.
print     (\p) Print current command.
prompt    (\R) Change your mysql prompt.
quit      (\q) Quit mysql.
rehash    (\#) Rebuild completion hash.
source    (\.) Execute an SQL script file. Takes a file name as an argument.
status    (\s) Get status information from the server.
system    (\!) Execute a system shell command.
tee       (\T) Set outfile [to_outfile]. Append everything into given outfile.
use       (\u) Use another database. Takes database name as argument.
charset   (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings  (\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.
resetconnection(\x) Clean session context.
query_attributes Sets string parameters (name1 value1 name2 value2 ...) for the next query to pick up.
ssl_session_data_print Serializes the current SSL session data to stdout or file

For server side help, type 'help contents'

## LOGIN

```bash
mysql -u root -p
```
## CREATE

O primeiro comando é o CREATE DATABASE, que serve para criar um banco de dados, que é onde vamos armazenar tabelas.

```bash
CREATE DATABASE wrfsolutions;
```

O CREATE DATABASE é uma variação do comando CREATE. É um DDL, ou seja, visa fundamentalmente alterar a estrutura do banco de dados, ao criar um conjunto de tabelas do zero. Ou seja, é o pontapé inicial do trabalho com BDs.

## Mostrar banco de dados

```bash
SHOW DATABASES;
```
    +--------------------+
    | Database           |
    +--------------------+
    | banco              |
    | information_schema |
    | mysql              |
    | performance_schema |
    | sys                |
    | wrfsolutions       |
    +--------------------+
    6 rows in set (0.00 sec)

## USE Database

Criado o banco de dados ou já tendo algum deles no seu computador, você pode utilizar o comando USE para selecionar o banco de dados.

```bash
USE wrfsolutions;
```
Com o USE, nós selecionamos um banco de dados que queremos editar. Ou seja, especificamos qual é o conjunto de tabelas a ser gerenciado. Também é um comando DDL.

## CREATE TABLE

Após a criação e seleção do banco de dados nós podemos partir para a criação de tabelas no SQL, e para isso vamos utilizar o CREATE TABLE.

Com esse comando estamos criando uma tabela com 5 colunas e estamos definindo o tipo de cada uma das colunas.

```bash
CREATE TABLE Clientes (ID_Cliente int, Nome text, Sobrenome text, Data_Nascimento text, Estado_Civil text, Sexo text, Email text, Telefone text, Renda_Anual int, Qtd_Filhos int, Escolaridade text);
```

O CREATE TABLE é um comando DDL. Pode ser usado depois do CREATE DATABASE, uma vez que já temos o banco de dados estabelecido. 

O CREATE TABLE já deve indicar na criação as colunas da tabela e os tipos de dados que serão inseridos. Também ajuda a configurar a questão da chave-primária, aquele elemento que permite a interligação entre tabelas.

## Listar todas as tabelas

```bash
show tables;
```
+------------------------+
| Tables_in_wrfsolutions |
+------------------------+
| clientes               |
+------------------------+
1 row in set (0.00 sec)

## INSERT INTO

Caso você não tenha informações na sua tabela e queira adicioná-las basta utilizar o comando INSERT INTO, que é o comando para adicionar dados na tabela com SQL.

```bash
INSERT INTO Clientes(ID_Cliente, Nome, Sobrenome, Data_Nascimento, Estado_Civil, Sexo, Email, Telefone, Renda_Anual, Qtd_Filhos, Escolaridade)
VALUES
    (1, 'Ricardo', 'Fahham', '1971-07-01', 'Casado', 'M', 'rfahham@hotmail.com', '21-980025474', 30000, 3, 'Superior'),
    (2, 'Alessandra', 'Miranda', '1974-01-19', 'Casado', 'F', 'alesmiranda@hotmail.com', '21-81836521', 100000, 0, 'Superior');
```

O INSERT INTO é um comando DML, ou seja, voltado para gerenciar e manipular dados específicos dentro das tabelas. 

Por isso, a cláusula INTO deve especificar de qual tabela estamos falando. É preciso especificar também os campos da tabela que receberão os valores novos.

## SELECT FROM

O SELECT é um exemplo perfeito de DQL, ou comando para consulta de dados. Ele deve ser acompanhado de uma indicação específica do local onde o dado será consultado (o FROM). 

O SELECT é um dos comandos SQL mais importantes e mais versáteis quando se trabalha com SQL. Pode ser usado em casos de leituras simples, como também se adapta a processos mais complexos. Tudo depende da demanda. 

```bash
SELECT * FROM Clientes;
```

Então com esse código você vai poder selecionar as colunas específicas ou todas (com o *) de uma tabela.

## UPDATE
Um clássico exemplo de DML. O UPDATE serve para atualizar dados nas tabelas. 

É preciso usar o WHERE para especificar qual é o dado, pois, caso contrário, a pessoa vai aplicar a atualização em todas as linhas da tabela.


```bash
UPDATE Clientes
SET Escolaridade = 'Superior'
WHERE Nome = 'Ricardo';
```

```bash
UPDATE Clientes
SET Telefone = '21-981836521'
WHERE Nome = 'Alessandra';
```

É usado quando é preciso inserir um novo dado ou alterar algo que já estava registrado. 

Por exemplo, se uma pessoa indica uma informação no formulário e depois solicita mudança. Então, o programador do banco de dados vai naquela linha e naquela coluna e realiza a alteração. 

## DELETE FROM

O DELETE também é um DML que precisa de muito cuidado para ser usado. Ele exclui dados de acordo com um critério definido ou então um dado em específico.


```bash
DELETE FROM Clientes WHERE ID_Cliente = 2;
```

Apaga as informações apenas, ao passo que a estrutura e o objeto em si continuam existentes. 

## TRUNCATE TABLE

Para finalizar nossa lista de comandos SQL, nós temos o comando TRUNCATE TABLE que serve para excluir todos os dados da tabela.

É um comando mais direto e simples que apaga as informações de uma tabela e a redefine para um estado inicial, vazio, sem informações. 

```bash
TRUNCATE TABLE Clientes;
```

Excluir todos os dados da tabela
É uma forma mais simples de apagar informações sem um critério específico informando filtros.

Evidentemente, deve ser usado em casos muito específicos, quando realmente se tem certeza da necessidade de exclusão da tabela. 

Apagar um Banco de Dados

```bash
DROP DATABASE wrfsolutions;
```
