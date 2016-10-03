source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails'
gem 'pg', '~> 0.19'
gem 'puma', '~> 3.0'
# gem 'jbuilder', '~> 2.5'

gem 'active_model_serializers', '~> 0.10.0'
gem 'rack-cors'

gem 'awesome_print'
gem 'http'
gem 'mechanize'
gem 'oj'
gem 'virtus'
gem 'dry-types'
gem 'dry-validation'
gem 'responders'
gem 'vacuum'

group :development, :test do
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'reek'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-rspec', require: false
end

group :test do
  gem 'vcr'
  gem 'webmock'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'fuubar'
end
