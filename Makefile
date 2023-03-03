#docker
docker-network-prune:
	docker network prune
docker-image-prune:
	docker images | grep none | grep -v grep | awk '{print $3}' | xargs  docker rmi -f


# mariadb
mariadb-up:
	docker-compose -f docker-compose-mariadb.yml up -d
mariadb-down:
	docker-compose -f docker-compose-mariadb.yml down
mariadb-restart:
	-docker-compose -f docker-compose-mariadb.yml down
	docker-compose -f docker-compose-mariadb.yml up -d

# redis
redis-up:
	docker-compose -f docker-compose-redis.yml up -d
redis-down:
	docker-compose -f docker-compose-redis.yml down
redis-restart:
	-docker-compose -f docker-compose-redis.yml down
	docker-compose -f docker-compose-redis.yml up -d

# postgresql
postgresql-up:
	docker-compose -f docker-compose-postgresql.yml up -d
postgresql-down:
	docker-compose -f docker-compose-postgresql.yml down
postgresql-restart:
	-docker-compose -f docker-compose-postgresql.yml down
	docker-compose -f docker-compose-postgresql.yml up -d

# mongo
mongo-up:
	docker-compose -f docker-compose-mongo.yml up -d
mongo-down:
	docker-compose -f docker-compose-mongo.yml down
mongo-restart:
	-docker-compose -f docker-compose-mongo.yml down
	docker-compose -f docker-compose-mongo.yml up -d

# metabase
metabase-up:
	docker-compose -f docker-compose-metabase.yml up -d
metabase-down:
	docker-compose -f docker-compose-metabase.yml down
metabase-restart:
	-docker-compose -f docker-compose-metabase.yml down
	docker-compose -f docker-compose-metabase.yml up -d

# minio
minio-up:
	docker-compose -f docker-compose-minio.yml up -d
minio-down:
	docker-compose -f docker-compose-minio.yml down
minio-restart:
	docker-compose -f docker-compose-minio.yml down
	docker-compose -f docker-compose-minio.yml up -d

# nginx
nginx-up:
	docker-compose -f docker-compose-nginx.yml up -d
nginx-down:
	docker-compose -f docker-compose-nginx.yml down
nginx-restart:
	-docker-compose -f docker-compose-nginx.yml down
	docker-compose -f docker-compose-nginx.yml up -d


# fe 
fe-up:
	docker-compose -f docker-compose-app-fe.yml pull
	docker-compose -f docker-compose-app-fe.yml up -d 
fe-down:
	docker-compose -f docker-compose-app-fe.yml down
fe-restart:
	-docker-compose -f docker-compose-app-fe.yml down
	-docker-compose -f docker-compose-app-fe.yml pull
	docker-compose -f docker-compose-app-fe.yml up -d 

# rocketmq
rocketmq-up:
	docker-compose -f docker-compose-rocketmq.yml up -d 
rocketmq-down:
	docker-compose -f docker-compose-rocketmq.yml down 