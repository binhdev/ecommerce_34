source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem "rails", "~> 5.1.3"
gem "bcrypt", "3.1.11"
gem "config"
gem "bootstrap-sass", "3.3.7"
gem "mysql2", "~> 0.3.18"
gem "carrierwave"
gem "mini_magick"
gem "will_paginate", ">= 3.0"
gem "roo"
gem "shareable"
# Use sqlite3 as the database for Active Record
#gem "sqlite3"
# Use Puma as the app server
gem "puma", "3.9.1"
# Use SCSS for stylesheets
gem "sass-rails", "5.0.6"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", "3.2.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "4.2.2"
gem "jquery-rails", "4.3.1"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "5.0.1"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "2.7.0"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 3.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

group :development, :test do
  gem "sqlite3", "1.3.13"
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", "9.0.6", platforms: :mri
  # Adds support for Capybara system testing and selenium driver
  #gem "capybara", "~> 2.13"
  #gem "selenium-webdriver"
  gem "pry"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", "3.5.1"
  gem "listen", "3.0.8"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring", "2.0.2"
  gem "factory_girl_rails"
  gem "faker"
  gem "spring-watcher-listen", "2.0.1"
  gem "faker"
  gem "factory_girl_rails"
end

group :test do
  gem "rails-controller-testing", "1.0.2"
  gem "minitest-reporters", "1.1.14"
  gem "guard", "2.13.0"
  gem "guard-minitest", "2.4.4"
  gem "factory_girl_rails"
  gem "faker"
  gem "rspec-rails"
  gem "shoulda-matchers"
end

group :production do
  gem "pg", "0.18.4"
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
