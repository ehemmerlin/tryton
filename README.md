# Up
```
> git clone https://github.com/ehemmerlin/tryton
> cd tryton
> docker-compose up -d postgres
> docker-compose logs postgres
...
database system is ready to accept connections

> docker-compose run --no-deps --rm tryton trytond-admin -d $(grep POSTGRES_DB .env | cut -d '=' -f 2-) --all -vv
...
"admin" email for "...": contact@example.com
"admin" password for "...": secret

> docker-compose up -d
```

Navigate to http://localhost:8000

Enter user (admin) and password (secret)

# Down
```
> docker-compose stop
> docker-compose rm
```