# whalebird.social

The official site of [Whalebird](https://github.com/h3poteto/whalebird-desktop) which is a Mastodon client for Windows, Mac and Linux.

[https://whalebird.social/](https://whalebird.social/)

## Development
It is normally rails application on docker. So it is required docker and docker-compose command in your machine.

```bash
$ docker-compose run --rm --service-ports rails /bin/bash
rails@0eddbb2b67fa:/usr/src/app$ bundle install --path vendor/bundle
rails@0eddbb2b67fa:/usr/src/app$ bundle exec rake db:create
rails@0eddbb2b67fa:/usr/src/app$ bundle exec rake db:migrate
rails@0eddbb2b67fa:/usr/src/app$ bundle exec rake db:seed
rails@0eddbb2b67fa:/usr/src/app$ bundle exec rails s -b 0.0.0.0
```
