# WHERE - Filtros no SQL

- Filtros de números
- Filtros de Textos
- Filtros de Datas
- Multiplos Filtros
- Filtrar por sexo
- Filtrar por idade
- Filtrar por produtos de uma marca
- Filtrar por cidade, estado

## Filtros de números

Podemos usar sinais lógicos

`=, <, >, <=, >=, <>`

-- Selecioanr apenas os produtos com preços iguais ou maiores que 1800

    SELECT *
    FROM produtos
    WHERE Preco_Unit >= 1800;

## Filtros de Textos

-- Selecioanr apenas os produtos do fabricante DELL

    SELECT *
    FROM produtos
    WHERE Marca_Produto = "DELL";

-- Selecioanar apenas os clientes do sexo feminino da tabela clientes
    
    SELECT *
    FROM clientes
    WHERE Sexo = "F";

## Filtros de Datas

-- Selecioanar apenas os pedidos do mes
-- Data no padrão americano

    -- DIA
    SELECT *
    FROM pedidos
    WHERE Data_Venda = "2019-01-01";

    -- MES
    SELECT * 
    FROM pedidos 
    WHERE Data_Venda BETWEEN '2019-08-01' AND '2019-08-31';


## Multiplos Filtros

Utilizando `AND` e `OR`

-- Mostrar apenas clientes do sexo Masculino e Solteiros
    
    SELECT * 
    FROM clientes
    WHERE Estado_civil = 'S' AND Sexo = 'M'; 

-- Mostrar apenas clientes do sexo Masculino e Solteiros
    
    SELECT * 
    FROM clientes
    WHERE Estado_civil = 'S' AND Sexo = 'M'; 

-- Mostrar apenas produtos da marca DELL ou SAMSUNG
    
    SELECT * 
    FROM produtos
    WHERE Marca_produto = 'DELL' OR Marca_produto = 'SAMSUNG';


SELECT CPF, NOME FROM tbcliente LIMIT 5;

SELECT * FROM tbproduto WHERE PRODUTO = '544931';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';

UPDATE tbproduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';

Usando maior, menor que...

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE IDADE = 22;

SELECT * FROM tbcliente WHERE IDADE > 22;

SELECT * FROM tbcliente WHERE IDADE < 22;

SELECT * FROM tbcliente WHERE IDADE <= 22;

SELECT * FROM tbcliente WHERE IDADE <> 22;

SELECT * FROM tbcliente WHERE NOME >= 'Fernando Cavalcante';

SELECT * FROM tbcliente WHERE NOME <> 'Fernando Cavalcante';

SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRECO_LISTA > 16.008;

SELECT * FROM tbproduto WHERE PRECO_LISTA < 16.008;

SELECT * FROM tbproduto WHERE PRECO_LISTA <> 16.008;

SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;

## DATAS

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';

SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;

SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;


## Filtros compostos

SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;
SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007;
SELECT * FROM tbproduto WHERE PRECO_LISTA <= 16.009;

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M')
 OR (cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins');

SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;

SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007;

SELECT * FROM tbproduto WHERE PRECO_LISTA <= 16.009;

SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007 AND PRECO_LISTA <= 16.009;

SELECT * FROM tbcliente WHERE IDADE >= 18 AND IDADE <= 22;

SELECT * FROM tbcliente WHERE IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M') OR (cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins');