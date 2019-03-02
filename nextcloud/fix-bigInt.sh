docker-compose exec --user www-data nextcloud  php occ maintenance:mode --on
docker-compose exec --user www-data nextcloud  php occ db:convert-filecache-bigint
docker-compose exec --user www-data nextcloud  php occ maintenance:mode --off
