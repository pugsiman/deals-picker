source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', github: "rails/rails"

gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
# gem 'jbuilder', '~> 2.5'
gem 'active_model_serializers'
gem 'rack-cors'
gem 'awesome_print'
gem 'http'
gem 'mechanize'
gem 'oj'
gem 'dry-types'
gem 'dry-validation'
gem 'responders'
gem 'vaacum'

group :development, :test do
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'reek'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
end

group :test do
  gem 'vcr'
  gem 'webmock'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'fuubar'
end
