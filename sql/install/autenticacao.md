# Ajustando a autenticação e os privilégios do usuário

Para usar uma senha para conectar-se ao MySQL como root, será necessário mudar seu método de autenticação de auth_socket para outro plug-in, como o caching_sha2_password ou o mysql_native_password. Para fazer isso, abra o prompt do MySQL do seu terminal:

```bash
sudo mysql
```

Em seguida, verifique quais os métodos de autenticação cada conta de usuário do seu MySQL utilizam com o seguinte comando:

```bash
SELECT user,authentication_string,plugin,host FROM mysql.user;
```

Neste exemplo, é possível ver que o usuário root autenticou usando o plug-in auth_socket. Para configurar a conta root para autenticar-se com uma senha, execute uma instrução ALTER USER para alterar qual plug-in de autenticação ela utiliza e configure uma nova senha.

```bash
ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'password';
```

Fonte: https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04-pt#passo-3-opcional-ajustando-a-autenticacao-e-os-privilegios-do-usuario

Proximo passo... [Criando Banco](create.md)