# lumen-docker
Docker for lumen

Setup

- Clone repo

- `cd` into repo root directory

- Rename `.env.example` to `.env`

- Clone/copy application into `app` directory

- Run `docker-compose up -d --build`

Import database

- Copy your gzipped database file into `docker/mysql/import` and name it `database.sql.gz`

- `cd` into repo root directory

- Run `docker-compose ps` to fine the `Name` of the `workspace container`

- Run `docker exec -it [WORKSPACE CONTAINER NAME] bash` to ssh into the workspace container

- Run `mysql_import [database_file_name] [database_host] [database_username] [database_password]` 

Get mysql container host/ip

- Run `docker inspect [MYSQL CONTAINER NAME]`


