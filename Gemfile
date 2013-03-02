source 'https://rubygems.org'

gem 'rake'

gem 'rails', '~> 3.2.13.rc1'
### gem 'rails', '4.0.0.beta1'
### gem 'protected_attributes' # Rails 4.0 (instead of strong_params)

gem 'rack'

gem 'psych' # ONLY FOR Ruby 2.0.0-preview1

gem 'gravatar_image_tag'

gem 'will_paginate'

# Asset template engines

### gem 'sass-rails', '4.0.0.beta1' #4.0: 
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
  gem 'rspec-rails'
  gem 'annotate'
  gem 'faker'
end

group :test do
  gem 'rspec-rails'
  gem 'webrat'
  gem 'spork-rails', :git => 'https://github.com/sahilm/spork-rails.git', :branch => 'rails-4'

  gem 'factory_girl_rails'

  # Pretty printed test output
  gem 'turn', :require => false
end
