# UPDATE

Alterar o conteúdo de uma linha

UPDATE  Nome_Tabela  
SET coluna a ser atualizada = valor atualizado
['''WHERE'''  ''condição''];

UPDATE users
SET role = 'admin'
WHERE id_user = 1;

Se fizer um update sem o WHERE, todas as linhas da coluna selecionada será alterada.

update usuarios 
set role = 'analista';

SELECT users
COUNT(*)
WHERE dev