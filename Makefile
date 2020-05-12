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