# Base Linux

FROM debian:bullseye

# Install mariadb

RUN apt-get update && apt-get install -y mariadb-server && apt-get clean

# Configuracao

COPY conf/mariadb.cnf /etc/mysql/mariadb.cnf.d/50-server.cnf

# Script de inicializacao

COPY tools/init-db.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init-db.sh

# Porta padrao do mariadb

EXPOSE 3306

# Comando que sera executado quando o container iniciar

ENTRYPOINT [ "init-db.sh" ]