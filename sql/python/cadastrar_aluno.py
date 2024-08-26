# python3 -m venv ./venv && source venv/bin/activate

# pip install mysql-connector-python
# sudo pip install mysql-connector

import mysql.connector
from mysql.connector import Error

def cadastrar_aluno(nome, data_nascimento, curso_id):
    try:
        # Conectar ao banco de dados MySQL
        conexao = mysql.connector.connect(
            host='localhost',       # Substitua pelo endereço do servidor MySQL
            database='universidade',# Substitua pelo nome do seu banco de dados
            user='salaam',     # Substitua pelo seu nome de usuário MySQL
            password='salaam'    # Substitua pela sua senha MySQL
        )

        if conexao.is_connected():
            cursor = conexao.cursor()

            # SQL para inserir um novo aluno
            sql_inserir = """INSERT INTO Alunos (nome, data_nascimento, curso_id)
                             VALUES (%s, %s, %s)"""
            valores = (nome, data_nascimento, curso_id)

            # Executar o comando SQL e confirmar a transação
            cursor.execute(sql_inserir, valores)
            conexao.commit()

            print("Aluno cadastrado com sucesso!")
    
    except Error as e:
        print(f"Erro ao conectar ao MySQL: {e}")
    
    finally:
        if conexao.is_connected():
            cursor.close()
            conexao.close()
            print("Conexão ao MySQL encerrada.")

# Exemplo de uso da função para cadastrar um aluno
cadastrar_aluno('Carlos Silva', '2000-05-15', 1)  # Substitua os valores conforme necessário