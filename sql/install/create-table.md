# CREATE TABLE

```bash
CREATE TABLE Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20)
);
```

Listar as tabelas do Banco 

```bash
show tables;
```

## Adicionando clientes na tabela

```bash
INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('Ana Silva', 'ana.silva@email.com', '(11) 98765-4321'),
('Bruno Costa', 'bruno.costa@email.com', '(21) 99876-5432'),
('Carla Souza', 'carla.souza@email.com', '(31) 91234-5678'),
('Diego Pereira', 'diego.pereira@email.com', '(41) 93456-7890'),
('Elisa Fernandes', 'elisa.fernandes@email.com', '(51) 92345-6789');
```

## Listando Clientes

```bash
SELECT * FROM Clientes;
```

## Apagando a Tabela

```bash
DROP TABLE Clientes;
```
