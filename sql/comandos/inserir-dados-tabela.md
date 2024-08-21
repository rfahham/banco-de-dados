# INSERT INTO

Caso você não tenha informações na sua tabela e queira adicioná-las basta utilizar o comando INSERT INTO, que é o comando para adicionar dados na tabela com SQL.

```bash
INSERT INTO Clientes(ID_Cliente, Nome, Sobrenome, Data_Nascimento, Estado_Civil, Sexo, Email, Telefone, Renda_Anual, Qtd_Filhos, Escolaridade)
VALUES
    (1, 'Ricardo', 'Fahham', '1971-07-01', 'Casado', 'M', 'rfahham@hotmail.com', '21-980025474', 30000, 3, 'Superior'),
    (2, 'Alessandra', 'Miranda', '1974-01-19', 'Casado', 'F', 'alesmiranda@hotmail.com', '21-81836521', 100000, 0, 'Superior');
```

O INSERT INTO é um comando DML, ou seja, voltado para gerenciar e manipular dados específicos dentro das tabelas. 

Por isso, a cláusula INTO deve especificar de qual tabela estamos falando. É preciso especificar também os campos da tabela que receberão os valores novos.