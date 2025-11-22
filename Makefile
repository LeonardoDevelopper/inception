DOCKER_COMPUSE_FILE	=	srcs/docker-compose.yml

all: mount_volume generate_certificate
	docker compose -f $(DOCKER_COMPUSE_FILE) up --build

clean:
	docker compose -f $(DOCKER_COMPUSE_FILE) down

fclean: clean
	docker compose -f $(DOCKER_COMPUSE_FILE) down -v

re: fclean all

mount_volume:

	mkdir -p ~/data
	mkdir -p ~/data/mariadb_volume

generate_certificate:
	mkdir -p srcs/nginx/certs
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout srcs/nginx/certs/server.key \
    -out srcs/nginx/certs/server.crt \
    -subj "/CN=localhost"
