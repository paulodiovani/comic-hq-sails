# Comic Headquarters

[![Build Status](https://travis-ci.org/paulodiovani/comic-hq-sails.svg?branch=master)](https://travis-ci.org/paulodiovani/comic-hq-sails)

# The webcomic plataform

## Dependencies

- Node.js 0.10+
- MongoDB
- Redis Server

### Use Docker to handle dependencies

The project has a `docker-compose.yml` to run MongoDB and Redis as services.
This is the easiest way to have the app running.

First install [Docker](http://docker.com) and [Docker Compose](https://docs.docker.com/compose/).

Then run (first time).

```console
docker-compose pull
docker-compose up -d
```

Check this other commands

```console
# start services (after first run with up)
docker-compose start

# stop services
docker-compose stop

# check status
docker-compose ps
```

## Running

First, copy `config/local.example.js` to `config/local.js` and
change it as necessary.

Then run:

```console
npm install
npm start
```

## Run tests

```console
npm test
```

## Contributing guidelines

1. Use [.editorconfig](http://editorconfig.org/)
1. Use CoffeeLint and jshint as Linters
1. Do not commit on `master` branch. Make a Fork and open _pull-requests_
1. Name _branches_ as `feature/changes`. Ex.: `user/twitter-auth`
1. Write tests for every new feature

If needing in help contact the owners or open an Issue.
