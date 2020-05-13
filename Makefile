#docker
docker-prune:
	docker network prune


# mariadb
mariadb-up:
	docker-compose -f mariadb/docker-compose.yml up -d
mariadb-down:
	docker-compose -f mariadb/docker-compose.yml down
mariadb-restart:
	docker-compose -f mariadb/docker-compose.yml down
	docker-compose -f mariadb/docker-compose.yml up -d

# redis
redis-up:
	docker-compose -f redis/docker-compose.yml up -d
redis-down:
	docker-compose -f redis/docker-compose.yml down
redis-restart:
	docker-compose -f redis/docker-compose.yml down
	docker-compose -f redis/docker-compose.yml up -d

# postgresql
postgresql-up:
	docker-compose -f postgresql/docker-compose.yml up -d
postgresql-down:
	docker-compose -f postgresql/docker-compose.yml down
postgresql-restart:
	docker-compose -f postgresql/docker-compose.yml down
	docker-compose -f postgresql/docker-compose.yml up -d

# mongo
mongo-up:
	docker-compose -f mongo/docker-compose.yml up -d
mongo-down:
	docker-compose -f mongo/docker-compose.yml down
mongo-restart:
	docker-compose -f mongo/docker-compose.yml down
	docker-compose -f mongo/docker-compose.yml up -d