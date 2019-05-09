source 'https://rubygems.org'

gem 'rails', '4.2.11.1'
gem 'responders' # For Rails 4.2.x # LOCKED DOWN
gem 'protected_attributes' # for 4.x

gem 'rake'
gem 'gravatar_image_tag'
gem 'will_paginate'
gem 'sass'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'
gem 'nokogiri'
gem 'json'
gem 'holepicker'
gem 'overcommit'

group :development do
  gem 'annotate'
  gem 'faker'

  # See Railscast #402 for more info.
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dawnscanner', require: false
end

group :development, :test do
  gem 'sqlite3', '1.3.13' # 2/7/2019: LOCKED DOWN
  gem 'rspec-rails', '2.99.0' # LOCKED DOWN
  gem 'rubocop-rspec'
end

group :test do
  gem 'spork-rails'
  gem 'factory_bot_rails'

  gem 'webrat'
  gem 'capybara', '2.18.0' # 5/25/2018: LOCKED DOWN

  # Pretty printed test output
  gem 'turn', require: false
end

group :production do
  gem 'pg'
end
