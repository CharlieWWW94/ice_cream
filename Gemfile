# frozen_string_literal: true

source 'https://rubygems.org'

gem 'dry-types', '~> 1.0', '>= 1.6.1'
gem 'hanami', '~> 2.0'
gem 'hanami-controller', '~> 2.0'
gem 'hanami-helpers', '~> 0.0.0'
gem 'hanami-router', '~> 2.0'
gem 'hanami-validations', '~> 2.0'
gem 'hanami-view', '~> 2.0'
gem 'hanami-webconsole', '~> 2.0'
gem 'pg'
gem 'puma'
gem 'rake'
gem 'rom', '~> 5.3'
gem 'rom-sql', '~> 3.6'

group :test do
  gem 'database_cleaner-sequel'
  gem 'rack-test'
end

group :development, :test do
  gem 'debug'
  gem 'dotenv'
  gem 'guard-puma', '~> 0.8'
end

group :cli, :development do
  gem 'hanami-reloader'
  gem 'hanami-rspec'
end

gem "faker", "~> 3.2"

gem "sidekiq", "~> 7.1"
