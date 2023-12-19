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
> docker-compose up
```

This will start containers for your database, the tryton service, a tryton cron
service, and [mailhog](https://github.com/mailhog/MailHog) for email testing.

You will see some warnings, which are probably fine to ignore. (TODO: rather fix the warnings...)

In order to login, you need to set a password for the `admin` user. Do this from a different terminal session, but in the same directory where you ren `docker-compose up`:

`docker-compose exec -it tryton trytond-admin --password -d tryton`

Navigate to http://localhost:8000, and login with user `admin` and your new password.



## Backup

(TODO: untested with new tryton v7.)

Execute the following command.
```
./backup.sh
```

## Update

(TODO: untested with new tryton v7.)

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
