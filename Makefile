up:
	docker-compose up -d --build

down:
	docker-compose down

re-up:
	docker-compose down
	docker-compose up -d --build

exec:
	docker-compose exec app bash