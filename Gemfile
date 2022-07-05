# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'google-apis-calendar_v3', '~> 0.21.0'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3'
gem 'signet', '~> 0.17.0'
gem 'sprockets-rails'

group :development, :test do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.1'
end

gem 'database_cleaner', '~> 2.0', group: :test
