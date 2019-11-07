.PHONY: run
run:
	@docker-compose up

.PHONY: up
up:
	@docker-compose up -d

.PHONY: down
down:
	@docker-compose down

.PHONY: clean
clean:
	@docker-compose rm -f
	@docker network rm replication_redis-network
