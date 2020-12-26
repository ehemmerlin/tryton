# Tryton
## Up
Execute the following commands to clone the repository.
```
> git clone https://github.com/ehemmerlin/tryton
> cd tryton
```
Update .env file with your own values (for testing purpose, stay with the ones provided).

Then execute the following commands to start Postgres and Tryton.
```
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

## Backup
Execute the following command.
```
./backup.sh
```

## Update
Update Tryton tag in .env file with another Tryton version, then execute the following command.
```
./update.sh
```
The backup files should be in the ${HOME}/BACKUP folder.

## Down
Execute the following commands to clean everything.
```
> docker-compose stop
> docker-compose rm
```

## Credits
[Deploying Tryton with Docker by Cédric Krier](https://www.youtube.com/watch?v=S1JmgNbNeeo)