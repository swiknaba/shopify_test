source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# rails
gem 'bootsnap', '>= 1.4.8', require: false
gem 'rails', '< 6.1'
gem 'responders'

# DB
gem 'pg', '~> 1.2', '>= 1.2.3'

# rack
gem 'puma', '~> 5.1'
gem 'rack-cors', require: 'rack/cors'
gem 'rack-www'

# frontend
gem 'sass-rails'
gem 'webpacker'

# utility
gem 'amazing_print'
gem 'diffcrypt'
gem 'oj'
gem 'oj_mimic_json'

# API
gem 'blueprinter'
# gem 'pagy', '~> 3.8', '>= 3.8.3' # in case we need pagination

group :tools do
  gem 'annotate'
  gem 'bundler-audit'
  gem 'rubocop', '~> 1.5', '>= 1.5.2'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rails_config', require: false
  gem 'rubocop-rspec', require: false
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails', '~> 6.1', require: false
  gem 'ffaker', '~> 2.17'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.33'
  gem 'selenium-webdriver' # Rails has a bug to raise an error without this dependencies. A fix-up PR is merged for Rails 6.1
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'rspec-rails'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'shopify_app', '~> 15.0'
