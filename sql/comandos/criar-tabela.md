# CREATE TABLE

Após a criação e seleção do banco de dados nós podemos partir para a criação de tabelas no SQL, e para isso vamos utilizar o CREATE TABLE.

Com esse comando estamos criando uma tabela com 5 colunas e estamos definindo o tipo de cada uma das colunas.

```bash
CREATE TABLE Clientes (ID_Cliente int, Nome text, Sobrenome text, Data_Nascimento text, Estado_Civil text, Sexo text, Email text, Telefone text, Renda_Anual int, Qtd_Filhos int, Escolaridade text);
```

O CREATE TABLE é um comando DDL. Pode ser usado depois do CREATE DATABASE, uma vez que já temos o banco de dados estabelecido. 

O CREATE TABLE já deve indicar na criação as colunas da tabela e os tipos de dados que serão inseridos. Também ajuda a configurar a questão da chave-primária, aquele elemento que permite a interligação entre tabelas.