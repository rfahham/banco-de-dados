# NOT LIKE em SQL

O comando NOT LIKE é utilizado de maneira oposta ao LIKE. Agora que você já aprendeu como o LIKE funciona, a explicação para este novo comando se torna simples.

O NOT LIKE é utilizado quando se deseja como resultado os dados que não possuem determinados caracteres.

Desse modo, caso o usuário deseje retornar apenas os dados dos professores cujos nomes não comecem a letra J, independentemente da quantidade de caracteres, o seguinte comando pode ser utilizado:

SELECT *

FROM Professor

WHERE nome_professor NOT LIKE ‘J%’

Assim, o resultado será:

| código| nome_professor	|idade	|disciplina|
|-------|-----------|-----------|-----------|
|23	|Maria	    |51|	Português   |
|34	|Fernando	|29|	Física      |
|34	|Fernando	|29|	Química     |
|56	|Ronaldo	|44|	História    |
|56	|Ronaldo	|44|	Geografia   |

Finalizando o LIKE e NOT LIKE em SQL
Bom, pessoal! Chegamos ao fim do nosso artigo sobre o LIKE e o NOT LIKE, na Linguagem SQL, para o ISS-RJ.

Caso queira se preparar para chegar competitivo nesta prova, invista nos  cursos para o ISS RJ do Estratégia Concursos. Lá você encontrará aulas completas e detalhadas, com os melhores professores do mercado.

Conheça também o Sistema de Questões do Estratégia. Afinal, a única maneira de consolidar o conteúdo de maneira satisfatória é através da resolução de questões. Lá você encontrará centenas de questões da Linguagem SQL, para o seu concurso.