# JOIN

- Introdução
- Criando

## Introdução

> CHAVE PRIMÁRIA

Uma chave Primária é uma coluna que identifica as informações distintas e uma tabela. 

Geralmente Chave primária é uma coluna de ID.

Toda tabela terá uma, e somente uma, chave primária.

Essa chave é utilizada como identificados único da tabela, sendo representaa por uma coluna que não receberá valores repetidos.

> CHAVE ESTRANGEIRA

É uma coluna que permite relacionar as linhas de uma segunda tabela com a Chave Primária de uma primeira tabela.

Na Tabela pedidos a coluna ID_Produto é comum a Tabela produtos

> TABELA FATO

É uma tabela que vai registrar os fatos ou acontecimentos de uma empresa/negócio em determinados períodos de uma empresa/negócio em determinados períodos de tempo (vendas, devolução, abertura de chamados, receitas, despesas, etc)

Geralmente é uam tabela com milhares de informações e composta essencialmente por colunas de ID usadas para buscar as informações complementares de uma tabela dimensão, conhecidas como chaves estrangeiras.

- Tabela pedidos, é uma tabela fato, por que contem ids de outras tabelas

- Tabela produtos, é uma tabela dimensão, porque tem IDS únicos para cada produto

> TABELA DIMENSÃO

Tabela que tem característica de um determinado elemento: lojas, produtos, funcionários, clientes, etc.

Mesta tabela, nenhum dos elementos principais irá se repetir. É onde vamos encontrar nossas chaves primárias.

- Lojas, nome, endereço, contato, quantidade de funcionários
- Produto, nome, marca, categoria, preço, custo
- Funcionário, nome, cpf, salario, área, data de nascimento
- Clientes, nome, data de nascimento, renda

EXEMPLO: Tabela de Produtos

Pelo ID, não se repete

Tabela de Clientes

Tabela de Lojas


> JOIN - JUNTAR / UNIR

As relações entre Tabela Dimensão e Tabela Fato são criadas por meio dos `JOIN'S`.

Os `JOIN'S` vão nos permitir fazer exataemnte isso: juntar as nossas tabelas FATO e DIMENSÃO, de forma a complemetar as informações uma das outras.

Tabela de produtos => Tabela de Pedidos

## INNER JOIN

Vai nos permitir relacionar duas tabelas e criar uma nova tabela

A nova tabela terá as linhas que são a interseção entre as tabelas

Tabela de pedido + Tabela de produtos

    SELECT
        Tabela_A.coluna1,
        Tabela_A.coluna2,
        Tabela_A.coluna3,
        Tabela_B.coluna4,
    FROM
        Tabela_A
    INNER JOIN Tabela_B
        ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria

-- Faça consulta que tenha como resultado todas as colunas da tabela de pedidos e as colunas Loja, Gerente e Telefone

-- JOIN

-- Tabela A --> Tabela Fato --> Tabela de Pedidos
-- Tabela B --> Tabela Dimensão --> Tabela Lojas
-- Chave Primária (Lojas) --> ID_LOJA
-- Chave Estrangeira (Pedidos) --> ID_LOJA

    SELECT
        pedidos.*,
        lojas.Loja,
        lojas.Gerente,
        lojas.Telefone
    FROM
        pedidos
    INNER JOIN lojas
        ON pedidos.ID_Loja = lojas.ID_Loja;



## LEFT JOIN


## RIGHT JOIN
