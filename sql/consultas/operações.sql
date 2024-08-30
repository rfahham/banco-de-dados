-- Operações Matemáticas

-- Vamos visualizar o resultado de cada uma dessas operações:

SELECT
    10 + 20 as 'Soma',
    100 - 40 as 'Subtração',
    5 * 20 as 'Multiplicação',
    300 / 12 as 'Divisão',
    22 % 5 as 'Resto da Divisão'
;

-- Para cálculos mais complexos, é possível usar parênteses para definir a ordem das operações, sendo que os cálculos dentro dos parênteses são resolvidos primeiro.
SELECT
    (100 - 40) * 4 as 'Subtração';
    
-- Arredondando casas decimais
SELECT
    ROUND(87.149, 2);
    
-- A função TRUNCATE() trunca um número para o número especificado de casas decimais, sem arredondar o valor.
SELECT
    TRUNCATE(87.149, 2);
    
-- A função FLOOR() arredonda o número para o inteiro mais próximo menor ou igual ao número original.
SELECT
    FLOOR(87.149);

-- De forma contrária à função FLOOR(), a função CEILING() arredonda o número para o inteiro mais próximo maior ou igual ao número original. Então nesse caso teríamos:
SELECT
    CEILING(87.149);

SELECT
    ROUND(87.149, 2) as 'Arredonda',
    TRUNCATE(87.149, 2) as 'Truncar.',
    FLOOR(87.149) as 'Arredonda p/ baixo',
    CEILING(87.149) as 'Arredonda p/ cima'
;