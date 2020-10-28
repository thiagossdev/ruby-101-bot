source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '2.7.2'

gem 'sinatra', '~> 2.1.0'
gem 'activerecord', '~> 6.0.3'
gem 'sinatra-activerecord', '~> 2.0.21'
gem 'pg'
gem 'rake'
gem 'pg_search', '~> 2.3.4'
gem 'factory_bot'
gem 'ffaker'
gem 'database_cleaner'

group :development do
  gem 'tux'
end

group :test do
  gem 'rack-test', require: 'rack/test'
  gem 'rspec'
end
