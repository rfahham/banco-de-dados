# python3 -m venv ./venv && source venv/bin/activate
# pip install pyodbc
# pip install SQLAlchemy
# pip install alembic

import pyodbc

dados_conexao = (
    "Driver={SQL Server};"
    "Server=DESKTOP-059018K;"
    "Database=wrfsolutions;"
)

conexao = pyodbc.connect(dados_conexao)

print("Conexão bem sucedida !!!")

cursor = conexao.cursor()

insert = """INSERT INTO Clientes(ID_Cliente, Nome, Sobrenome, Data_Nascimento, Estado_Civil, Sexo, Email, Telefone, Renda_Anual, Qtd_Filhos, Escolaridade)
VALUES
    (3, 'João', 'Ricardo',  '2000-04-24', 'Solteiro', 'M', '@gmail.com', '21-', 72000, 0, 'Superior');"""

cursor.execute(insert)

cursor.commit()