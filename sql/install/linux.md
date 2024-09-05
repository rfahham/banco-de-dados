# Instalação no no Ubuntu 20.04

## Atualizando pacotes

```bash
sudo apt update
```

## Instalando 

```bash
sudo apt install mysql-server
```

## Testando o MySQL

```bash
systemctl status mysql.service

● mysql.service - MySQL Community Server
     Loaded: loaded (/lib/systemd/system/mysql.service; enabled; vendor preset>
     Active: active (running) since Wed 2024-09-04 10:39:35 -03; 17min ago
   Main PID: 83486 (mysqld)
     Status: "Server is operational"
      Tasks: 37 (limit: 4646)
     Memory: 361.0M
     CGroup: /system.slice/mysql.service
             └─83486 /usr/sbin/mysqld

Sep 04 10:39:34 DESKTOP-1D8TPGL systemd[1]: Starting MySQL Community Server...
Sep 04 10:39:35 DESKTOP-1D8TPGL systemd[1]: Started MySQL Community Server.
```

## Se o MySQL não estiver funcionando, inicie-o com o comando 

```bash
sudo systemctl start mysql.
```

## Acessando o MySQL

```bash
mysql
```

## Verificando databases

```bash
show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.15 sec)
```

Proximo passo... [Ajustando autenticação](autenticacao.md)

