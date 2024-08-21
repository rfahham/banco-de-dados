# UPDATE
Um clássico exemplo de DML. O UPDATE serve para atualizar dados nas tabelas. 

É preciso usar o WHERE para especificar qual é o dado, pois, caso contrário, a pessoa vai aplicar a atualização em todas as linhas da tabela.


```bash
UPDATE Clientes
SET Escolaridade = 'Superior'
WHERE Nome = 'Ricardo';
```

```bash
UPDATE Clientes
SET Telefone = '21-981836521'
WHERE Nome = 'Alessandra';
```

É usado quando é preciso inserir um novo dado ou alterar algo que já estava registrado. 

Por exemplo, se uma pessoa indica uma informação no formulário e depois solicita mudança. Então, o programador do banco de dados vai naquela linha e naquela coluna e realiza a alteração. 