# MIGRATIONS

As migrations no SQLAlchemy são scripts que permitem fazer alterações na estrutura do banco de dados de forma sistemática, consistente e reprodutível. As migrations são utilizadas para controlar a evolução do esquema do banco de dados de forma organizada e controlada. Elas permitem que você crie e atualize a estrutura do banco de dados de maneira incremental, sem precisar modificar diretamente os arquivos existentes. 
As migrations são um mecanismo de gestão de mudanças de banco de dados que permitem o versionamento e a abstração na modelagem do banco. Ao utilizar migrations, você tem um controle mais preciso sobre as alterações no esquema do banco de dados. Em vez de depender apenas da criação automática das tabelas, você pode definir as alterações no esquema de forma programática, tornando o processo mais organizado e rastreável. 
O SQLAlchemy e o Alembic são uma excelente solução para usar migrations em Python. Ambos os tools fornecem uma abordagem moderna para criar e rastrear todas as alterações nos seus bancos de dados. 

https://www.linkedin.com/pulse/alembic-sql-alchemy-combina%C3%A7%C3%A3o-m%C3%A1gica-na-cria%C3%A7%C3%A3o-de-de-paula-julio/

```bash
docker compose exec server bash -c 'npx sequelize db:migrate'
```

Arquivo `.sequelizerc` com:

    const path = require('path');

    module.exports = {
    'config': path.resolve('config', 'database.js'),
    'models-path': path.resolve('app', 'models'),
    'seeders-path': path.resolve('database', 'seeders'),
    'migrations-path': path.resolve('database', 'migrations'),
    };
