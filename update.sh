#!/bin/sh
set -e

cd "$(dirname "$0")"

docker-compose pull --quiet
docker-compose up -d 2>&1 | grep -v "is up to date" >&2