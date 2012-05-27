source 'https://rubygems.org'

gem 'rake', '~> 0.9.0'

gem 'rails', '~> 3.2.3'

gem 'rack'

gem 'gravatar_image_tag'

gem 'will_paginate'

# Asset template engines
gem 'sass-rails'
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

gem 'nokogiri', '1.5.0'

gem 'json'

group :development, :test do
  #BROKEN:  gem 'sqlite3', "~> 1.3.5"
  gem 'mysql2'
end

group :development do
  gem 'rspec-rails'
  gem 'annotate'
  gem 'faker'
end

group :test do
  gem 'rspec-rails'
  gem 'webrat'
  gem 'spork', '~> 0.9.0.rc'
  gem 'factory_girl', "~> 2.0.5"
  gem 'factory_girl_rails'

  # Pretty printed test output
  gem 'turn', :require => false
end
