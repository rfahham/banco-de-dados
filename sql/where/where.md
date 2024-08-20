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