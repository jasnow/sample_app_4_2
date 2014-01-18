source 'https://rubygems.org'

gem 'rake'

gem 'rails', '4.1.0.beta1'
gem 'protected_attributes' # for 4.0

gem 'rack'

gem 'gravatar_image_tag'

gem 'will_paginate'

# Asset template engines
gem 'sass-rails'
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

gem 'nokogiri'

gem 'json'

group :development, :test do
  gem 'pg'
end

group :production do
  gem 'pg'
end

group :development do
  gem "rspec-rails"
  gem 'annotate'
  gem 'faker'

  # See Railscast #402 for more info.
  gem 'better_errors' 
  gem 'binding_of_caller'
end

gem 'holepicker'

group :test do
  gem 'spork-rails'
  gem "rspec-rails"
  gem 'factory_girl_rails'

  gem 'webrat'
  gem 'capybara'

  # Pretty printed test output
  gem 'turn', :require => false
end

