#!/bin/bash
set -e

# Cria diretório do socket (necessário no Debian puro)
mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld

# Inicia MariaDB em foreground
exec mysqld
