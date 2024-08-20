# Operadores LIKE e NOT LIKE na Linguagem SQL

O LIKE é um operador condicional utilizado em buscas de informações em bancos de dados.

Este operador é utilizado, principalmente, com o comando WHERE, em consultas.

Este operador é um pouco mais complexo do que outros operadores condicionais, mas não é tão difícil de se entender.

O operador LIKE é utilizado para encontrar registros específicos dentro de um padrão de escrita. 

Por exemplo, com a utilização deste comando, é possível encontrar os nomes de professores em um banco de dados que comecem com a letra F, ou que terminem com a letra O.

Alguns caracteres importantes são utilizados para a operacionalização do comando LIKE, como a porcentagem (%) e o underline (_).

Um exemplo do uso da porcentagem (%) é quando o usuário queira procurar palavras que são iniciadas com determinada letra, sem determinar a quantidade específica de caracteres que essa palavra possui. Assim, caso o usuário queira saber as palavras que começam com a palavra C, usa-se ‘C%’.

Por sua vez, o underline (_) é utilizado quando se define o número de caracteres da palavra. Por exemplo, caso o usuário queira encontrar palavras que comecem com a letra C, mas que tenha obrigatoriamente apenas 4 caracteres, utiliza-se ‘C_ _ _ ’.

Em suma, a porcentagem é utilizada quando não se tem definido o número de caracteres dos dados a serem retornados; já o underline é utilizado em consultas nas quais procuram informações com determinado número de caracteres.

Você pode conferir logo abaixo algumas variações da utilização do underline e da porcentagem:


| Comando | Retorna |
|--------|---------------|
| LIKE ‘A%’	| Qualquer string que seja iniciada com a letra A.|
| LIKE ‘%A’	| Qualquer string que seja iniciada com a letra A.|
| LIKE’%A%’	| Qualquer string que tenha a letra A em qualquer posição.|
| LIKE ‘A_’	| String que possua dois caracteres,sendo a primeira letra A e a segunda qualquer outra.|
| LIKE ‘_A’	| String que possua dois caracteres,sendo a última a letra A e a primeira qualquer outra.|
| LIKE ‘_A_’	| String que possua exatamente três caracteres,em que o segundo seja obrigatoriamente a letra A.|
| LIKE ‘_ _ _’	| Qualquer string com exatamente três caracteres.|
| LIKE ‘%A_’	| Qualquer string que tenha a letra A na penúltima posição e a última seja qualquer outro caractere,possuindo qualquer tamanho.|
| LIKE ‘_ _%’	| Qualquer string com pelo menos dois caracteres.|

## Sintaxe do LIKE

Um exemplo de sintaxe para utilizar o comando LIKE é:

    SELECT coluna1, coluna2, …

    FROM nome_tabela

    WHERE coluna LIKE padrão

Queremos pegar todos os nomes que comecem coma letra "A" dentro da tabela clientes.

    SELECT Nome
    FROM clientes
    Where Nome LIKE 'A%';

Nesta situação, caso o usuário deseje retornar apenas os dados dos clientes cujos nomes comecem a letra A, independentemente da quantidade de caracteres.
