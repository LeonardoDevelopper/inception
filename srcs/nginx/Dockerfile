FROM  debian:bullseye

# Instalar nginx e openssl

RUN apt-get update && \
    apt-get install -y nginx openssl && \
    apt-get clean

# Criar directorios certificados

RUN mkdir -p /etc/nginx/certs

# Copiar arquivos de configuracao e certificados 
COPY conf/default.cnf /etc/nginx/conf.d/default.conf
COPY certs/server.crt /etc/nginx/certs/server.crt
COPY certs/server.key /etc/nginx/certs/server.key

# Export a porta HTTPS
EXPOSE 443

# Rodar NGINX em Foreground

CMD [ "nginx", "-g", "daemon off;" ]