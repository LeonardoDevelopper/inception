DOCKER_COMPUSE_FILE	=	srcs/docker-compose.yml

all: mount_volume
	docker compose -f $(DOCKER_COMPUSE_FILE) up --build

clean:
	docker compose -f $(DOCKER_COMPUSE_FILE) down

fclean: clean
	docker compose -f $(DOCKER_COMPUSE_FILE) down -v

re: fclean all

mount_volume:

	mkdir -p ~/data
	mkdir -p ~/data/mariadb_volume