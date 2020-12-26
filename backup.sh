#!/bin/sh
set -e

cd "$(dirname "$0")"

BACKUP=${HOME}/BACKUP
TRYTON=`docker-compose ps -q tryton | head -n 1`
mkdir -p ${BACKUP}

docker run --rm -w / --volumes-from $TRYTON -v ${BACKUP}:/backup busybox tar cf /backup/filestore.tar var/lib/trytond/db
docker-compose exec -T --user $(grep POSTGRES_USER .env | cut -d '=' -f 2-) postgres pg_dump $(grep POSTGRES_DB .env | cut -d '=' -f 2-) >${BACKUP}/db.dump