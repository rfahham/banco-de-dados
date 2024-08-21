# Banco de Dados

## Fundamentos

- O que são dados?
- O que são Banco de Dados?
- Termos importantes
- SQL vs. MySQL, SQL Server, OracleDB e PostgreSQL
- Porque aprender AQL?

## O que são dados?

Um dado é um conhecimento que temos sobre alguma coisa.
Com esse conhecimento, chegamos a uma conclusão. E com essa concusão tomamos alguma ação.
De forma geral, todas as empresas possuem um grande volume de informação/dados que precisam ser organizados e armazenados.


## O que são Banco de Dados?

Um dado é uma informação que nos permite chegar ao conhecimento de algo. Um dado isolado por si só já tem um grande valor. Em conjunto com outros dados então, ele é mais valioso ainda.

Vamos então tentar entender o que é um Banco de Dados de uma maniera bem simples. 
Quando temos vários dados, precisamos organizar em uma tabela. E quando temos várias tabelas, temos um banco de dados.

- Dado
    - 1 Compra online
    - 1 transferência bancária
    - 1 curtida em uma foto no instagram

- Tabela
    - Diversas compras
    - Diversas transferências bancárias
    - Diversas curtidas em uma foto no instagram

- Banco de Dados
    - Informações de compras online, usuários, etc.
    - Informações de contas bancárias, histórico de transferências, dados dos usuários, etc.
    - Curtidas em fotos, informações de preferências dos usuários, informações dos perfis de usuário, etc.

Para manipular as tabelas de um banco de dados, será necessário um `Sistema de Banco de Dados`.

Um Sistema de Banco de Dados se trata de um programa que nos fornece uma interface que nos permite fazer a leitura de tabela de um determinado banco de dados.

O Excel é um exemplo de um programa que nos oferece uma interface para manipular os dados.

Nele, podemos armazenaar várias tabelas, e consequentemente ter uma espécie de banco de dados.

## Tipos

### Banco de dados Relacional

Onde as tabelas possuem algum tipo de relação.

![Banco de Dados Relacional](../images/relacional.png)

### Banco de dados Não Relacional

Diferente dos bancos elacionais, os não relacionais, não possuem algum tipo de ligação.

O MongoDB é um exemplo. Onde são armazenados

## Termos importantes

QUERY

Uma query é um pedido de uma informação ou de um dado. Esse pedido também pode ser entendido como uma consulta, uma solicitação ou, ainda, uma requisição.

Em resumo, uma query (ou consulta) é uma leitura dos dados de uma tabela dentro de um banco de dados. Ou seja, quando queremos sisualizar deerminados dados de uma tabela, na prática o que queremos é fazer uma consulta aos dados do banco de dados.

Porém, a leitura desses dados não é aleatória. Ela é baseada em uma série de comandos, feitos a partir da linguagem SQL.

Examplo:

|id | produto                     | data_venda    | valor      |
|---|:---------------------------:|---------------|:----------:|
| 1 | televisao                   | 2021-08-18    |    3000    |
| 2 | computador                  | 2021-08-17    |    2300    |  
| 3 | celular                     | 2021-08-17    |     800    |  
| 4 | PS5                         | 2021-08-16    |    3500    |  
| 5 | tablet                      | 2021-08-15    |     950    |

    
    SELECT *
    FROM tabela_vendas
    WHERE valor > 1000;

|id | produto                     | data_venda    | valor      |
|---|:---------------------------:|---------------|:----------:|
| 1 | televisao                   | 2021-08-18    |    3000    |
| 2 | computador                  | 2021-08-17    |    2300    |  
| 4 | PS5                         | 2021-08-16    |    3500    |  

## SQL vs. MySQL, SQL Server, OracleDB e PostgreSQL

O SQL é a linguagem de consulta 

O SQL, my SQL, SQL Server, OracleDB e PostgreSQL são os programas.

##  Porque aprender SQL?

SQL - Structured Query Language

Traduzindo para o português, a sigla SQL significa Linguagem de Consulta Estruturada.

O SQL é uma libguagem universal para manipular dados em banco de dados. Qualquer empresa que precise lidar com alto volume de dados precisará de profissionais com esse conhecimento.

Essa linguagem possui aplicações em diferentes áreas e profissões. O profissional que tiver conhecimento não só em ferramentas como Excel, Power BI ou Python, mas também em SQL, terá muitas oportunidades de atuação.

O motivo para aprender SQL é simples, garantir uma maior versatilidade no conhecimento e ser profissional diferenciado e requisitado no mercado.

Para acessar e consultar os dados em um abanco de dados, é necessário o uso de uma série de comandos.

Esses comandos, na verdade se tratram de uma linguagem de programação, chamada SQL.

Essa é uma linguagem de banco de dados universal, e é por dela que será possível a consulta aos dados dentro dos banco de dados.

Justificativas

- SQL é o futuro
- Seguraça da informação
- Alto volume de dados
- Linguagem atemporal

Utilização nos mais diversos setores

- Setor financeiro
- Redes Sociais
- Aplicativos de música e Streaming
- Redes de Pesquisa
- Data Science
- Setr de energia
- Business Intelligence e Análise de dados
- Marketing

Profissionais em Banco de dados

> Administrador de banco de dados (AD)

Profissional que conhece a fundo o processo empresarial, define as tabelas que serão criadas e os relacionamentos entre as tabelas.

> Desenvolvedor de Banco de Dados (DB)

O DB tem um grande conhecimento de lógica de programação é responsável por criar rotinas e gerenciar processos que são feitos dentro do próprio SGBD

> Analista Business Intelligence

Responsável pela coleta, organização e anãlise das infromações de mercado que dão suport a gestão de negócio.

> Analista de dados

Responsável por coletarm compilar e interpretar dados, promovendo estratégias para a empresa.

> Admistrador de Banco de Dados (DBA)

A função de um DBA é grantir que o banco de dados esteja sempre funcionando, garantindo sua disponibilidade e otimização.

> Cientista de dados

Especialista com habilidade para analisar grande volume de dados e interpretar informações de valor e apoiar na tomad de decisão dos negócios.

## Vantagens

> Aprendizado

O profissional com conhecimento sobre o SQL da Oracle conseguirá manipular facilmente o MySQL ou SQL Server da Microsoft. Por mais que existam diferenças - principalmente na parte de funções -, a adaptação do profissional não é uma questão complicada.

> Portabilidade

Por exemplo, é mais simples migrar sistemas que usam Oracle para SQL Server ou para MySQL, ou vice-versa. Lembrando que quanto mais for utilizado o SQL Standard definido pelo ANSI, mais fácil será essa portabilidade no futuro. Então, é útil evitar as funções específicas do banco de dados e permitir que o programa realize essa tarefa.

> Longevidade

Sempre adaptados ao padrão ANSI (da sigla American National Standard Institute)
A longevidade é a garantia de que os seus relatórios ou processos utilizando o SQL irão funcionar por um longo período, já que estarão sempre adaptados ao padrão ANSI. Ou seja, ao efetuar um upgrade de banco de dados o seu sistema não ficará fora de serviço.

> Comunicação

O fato da maioria utilizar SQL permite a facilidade de comunicação entre os sistemas. Como, por exemplo, processos de ETL, (extract, transform and load), ou de integração entre sistemas que ficam mais simples de serem desenvolvidos, já que ambos utilizam o SQL padrão.

> Liberdade de Escolha

Por existir um padrão de linguagem, se a empresa for optar pelo uso de um banco de dados relacional não ficará presa à linguagem de comunicação, por exemplo, já que são bem semelhantes. Ao tomar essa decisão, a corporação irá utilizar outros critérios de escolha, como performance, hardware, custo, entre outros.

## Desvantagens

> Falta de criatividade

A primeira é a privação da criatividade. O SQL possui limitações que podem não atender às novas demandas no mercado na linguagem SQL, principalmente com o surgimento das redes sociais e dos enormes volumes de dados, o chamado big data. Ou seja, há uma carência nas coletas de dados que estão trafegando na internet.
	
> Falta de estruturação

Por não possui if, for e when, isto é, comandos condicionais como as demais linguagens de programação.
