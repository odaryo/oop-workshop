up:
	docker-compose up -d
build:
	docker-compose build
stop:
	docker-compose stop
restart:
	docker-compose down
	docker-compose up -d
down:
	docker-compose down

keygen:
	docker-compose exec php-fpm php artisan key:generate
install:
	docker-compose exec php-fpm composer install
test:
	docker-compose exec php-fpm ./vendor/bin/phpunit
clear:
	php artisan view:clear && php artisan cache:clear && php artisan config:clear && php artisan route:clear
	composer dump-autoload
cache:
	php artisan config:cache && php artisan route:cache
