source 'https://rubygems.org'

ruby '2.4.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'

### FRAMEWORK ADD-ONS
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'figaro'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

### ASSETS && FRONTEND USAGE
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'font-awesome-rails'
# handle javascript datetime
gem 'momentjs-rails'
# show progressbar while navigate between pages
gem 'nprogress-rails'
# generate js chart from server side
gem "highcharts-rails"
gem 'chartkick'
gem "select2-rails"
gem 'bootstrap3-datetimepicker-rails'

### MVC EXTENSIONS
## COMMON
gem 'chronic'
# role
gem 'pundit'
gem 'draper'
# background job
# this gem uses concurrent-ruby to create in-memory delay jobs, thus it can be deployed to any environment
# for more functionalities, we should use Sidekiq instead
gem 'sucker_punch'
# contact form, I guess every product we do will have at least one
gem 'mail_form'
# handle money calculation
gem 'money-rails'

## MODELS
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise'
# randomly generate avatar
gem "avatarly"
# image uploader, can use to upload file to local storage or AWS S3
gem 'carrierwave', '>= 1.0.0.beta', '< 2.0'
# handle image storing
gem 'cloudinary'
# full-text seach, only if we use PG, more powerful, please use ElasticSearch https://github.com/elastic/elasticsearch-rails
# gem 'pg_search'
# gem 'searchkick'
# better than default rails Enum, avoid enum collision
gem 'enumerize'
# count has_many, i.e. user has X post count, supports conditional counter
gem 'counter_culture', '~> 0.1.33'
# handle state transition in model: pending->active->inactive
gem 'aasm'
# for tagging: blog post with tags: technology, rails, etc.
# gem 'acts-as-taggable-on', '~> 4.0'
# querying easier
gem 'groupdate'
gem 'hightop'


## VIEWS
# nested layout, allow to smaller layout rather than only applicatin layout
gem 'nestive'
# use slim rather than default erb
gem 'slim-rails'
# generate bootstrap form easily
gem 'simple_form'
# to build nested form for has_many relationship
# https://github.com/nathanvda/cocoon
gem "cocoon"
# pagination tool
gem 'kaminari'
# auto generate SEO friendly info
gem 'meta-tags'
# process markdown text
# gem 'redcarpet'


## CONTROLLERS
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# to generate static pages like About page, Policy page
gem 'high_voltage', '~> 3.0.0'
# thin controller in Rails, move logic to service class
# read more: http://neethack.com/2015/06/rails-abstraction-showcase/
gem 'light-service'
# display friendly error page
gem 'gaffe'
# support query by slug: /blogs/my-post-title
gem 'friendly_id', '~> 5.1.0'
# quick and dirty way to generate API: https://github.com/ruby-grape/grape
# gem 'grape'
# quick and dirty way to generate Admin panel: https://github.com/ruby-grape/grape
# gem 'active_admin'

# use this gem if we use Mailchimp API
# gem 'gibbon'

# payment gateway
# gem 'stripe'
# online exchange rate
# gem 'eu_central_bank'

# if we need activity feed for users, similar to Facebook activity feed
# gem 'public_activity'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-puma'
  gem 'guard-spring'
  gem 'letter_opener'
  gem 'rack-mini-profiler', require: false
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-commands-rubocop'
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop'
end
group :production do
  gem 'rails_12factor'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false
  gem 'coveralls', require: false
  # specialized in json api testing
  gem 'airborne'
  # to be used with Code Climate
  gem 'codeclimate-test-reporter'
  gem 'webmock'
  gem 'timecop'
end

### monitoring tools
group :development, :staging, :production do
  # app monitoring
  gem 'newrelic_rpm'
  # frontend javascript bugs tracker
  gem 'rollbar'
  # bakend exception listener
  gem 'sentry-raven'
end

### TOOLS
gem 'puma', '~> 3.0'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# database gem
gem 'pg', '~> 0.18'

# if we need to schedule cronjob
# gem 'whenever', :require => false
# to generate fake data for demo
gem 'factory_bot_rails'
gem 'faker'
# manage data in DB with GUI, similar to PHPAdmin
# should not run this for long on production
gem 'blazer'
# DB GUID
gem 'rails_db'
