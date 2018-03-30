[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
[![Code Climate](https://codeclimate.com/github/GoldenOwlAsia/rails5_template/badges/gpa.svg)](https://codeclimate.com/github/GoldenOwlAsia/rails5_template)
[![Test Coverage](https://codeclimate.com/github/GoldenOwlAsia/rails5_template/badges/coverage.svg)](https://codeclimate.com/github/GoldenOwlAsia/rails5_template/badges/coverage.svg)
[![Coverage Status](https://coveralls.io/repos/github/GoldenOwlAsia/rails_template/badge.svg?branch=coverall)](https://coveralls.io/github/GoldenOwlAsia/rails_template?branch=coverall)
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  `ruby '2.4.0'`
  `rails '4.2.9'`

* System dependencies
    * Bundle install gems:
        * `rails_db`: Visit http://localhost:3000/rails/db and you will see your database tables and SQL editors.

        * `factory_girl_rails, faker`: Create fake data to demo

        * `whenever`: Cron tasks(semilar with sidekiq)

        * `sentry-raven, rollbar`: Backend and frontend listener bugs

        * `pg`: Database postgres

        * `puma`: Use Capistrano for deployment

        * `...`: See `gemfile` to learn more about gems

* Configuration
    `cp .env.sample .env`

    - Setup rollbar ENV key.

    `cp config/database.yml.sample config/database.yml`
* Database creation

    bundle exec rake db:create DISABLE_DATABASE_ENVIRONMENT_CHECK=1
    bundle exec rake db:migrate

* Database initialization
    bundle exec rake db:seed

* Database reset
    bundle exec rake db:reset DISABLE_DATABASE_ENVIRONMENT_CHECK=1

* How to run the test suite
    `bundle exec rspec spec/`

* How to run project
    * Run `rails c` to get User auth token from first User.
    * Run `rails s` to start server

* Services (job queues, cache servers, search engines, etc.)
    `heroku local` to run delayed_jobs
    `whenever` to run cron tasks

* Deployment instructions
    `Config auto deploy heroku and EB`
* ...
