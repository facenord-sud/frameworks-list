source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use sqlite3 as the database for Active Record
gem 'pg', group: :production
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'kaminari', '~> 0.16.1' # pagination
gem 'foundation-rails' # framework html, css, js
gem 'simple_form' # forms
gem 'haml' # genère du html
gem 'foundation-icons-sass-rails' # icones sympas
gem 'devise' # user management

gem 'enumerize' # enumerations in models

gem 'sqlite3', group: [:test, :development]
gem 'rails_admin' # administration
gem 'select2-rails', '~> 3.5.9.1' # Better select
gem 'rest_client'
# Elastic search
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
gem 'bonsai-elasticsearch-rails', group: :production #For heroku
group :development do
  gem 'binding_of_caller'
  gem 'magic_encoding'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'rails-erd'
  gem 'meta_request'
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'capybara', '~> 2.4.3'
  gem 'capybara-webkit'
  gem 'factory_girl_rails', '4.1.0'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '~> 1.2.0'
  gem 'lorem-ipsum'
  gem 'rspec-rails'
  gem 'childprocess'
end

gem 'rails_12factor', group: :production
gem 'unicorn' # Web server for production
# Use debugger
# gem 'debugger', group: [:development, :test]

ruby '2.1.3'