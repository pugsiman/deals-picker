source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', github: "rails/rails"

gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
# gem 'jbuilder', '~> 2.5'

gem 'rack-cors'
gem 'awesome_print'
gem 'http'
gem 'mechanize'
gem 'oj'

group :development, :test do
  gem 'rspec'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'vcr'
  gem 'webmock'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'fuubar'
end
