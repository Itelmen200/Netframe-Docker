# Netframe-SQL

## Requirements

Install PostgreSQL.
```sh
apt install postgresql
```

# Tasks: 
#### 1. Create a database.

Connect to PostgreSQL as 'user'.

```sh 
psql -U user -d mydatabase -h 127.0.0.1
```

Create a database 'glebdatabase'.
```
CREATE DATABASE mydatabase;
```

Connect to the newly created database.
```
\c glebdatabase
```

##### 1.1. Add 2 tables and fill with some values.

Create two tables.
```
CREATE TABLE table1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

CREATE TABLE table2 (
    id SERIAL PRIMARY KEY,
    address VARCHAR(255),
    city VARCHAR(100)
);
```

Fill the tables with data.
```
INSERT INTO table1 (name, age) VALUES ('Gleb', 23), ('Sasha', 22);
INSERT INTO table2 (address, city) VALUES ('Ivana Franka 5', 'Kyiv'), ('Starovokzalnaya 2', 'Borispil');
```

#### 2. Use the SELECTS for getting data.

Get data from tables:

```
SELECT * FROM table1;
SELECT * FROM table2;
```

#### 3. Make backup. 

Quit 'psql'.
```
\q
```

Create a backup of the 'glebdatabase'.
```sh
pg_dump -U user -h 127.0.0.1 glebdatabase > glebdatabase_backup.sql
```

#### 4. Remove one table.

Connect to the database 'glebdatabase'.
```sh
psql -U user -d mydatabase -h 127.0.0.1
```

Drop table table1.
```
DROP TABLE table1;
```

#### 5. Restore the backup.

Quit 'psql'.
```
\q
```

Drop and create the 'glebdatabase' again.
```
dropdb -U user -h 127.0.0.1 glebdatabase
createdb -U user -h 127.0.0.1 glebdatabase
```

Restore the backup.
```
psql -U user -h 127.0.0.1 glebdatabase < glebdatabase_backup.sql
```

#### 6. Remove the one database.

Remove the 'glebdatabase':
```
dropdb -U user -h 127.0.0.1 glebdatabase
```
