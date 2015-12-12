source 'https://rubygems.org'

gem 'rails', '4.2.5'

gem 'rails-api'

gem 'spring', :group => :development

gem 'sqlite3'

gem 'devise_token_auth'

gem 'mailgun_rails'
gem 'omniauth-google-oauth2', '~> 0.2.8'
gem 'omniauth-facebook', '~> 2.0.1'
gem 'figaro'
gem 'rack-cors', :require => 'rack/cors'

gem 'active_model_serializers'

gem 'pg'

#Use Puma as application server, it supports high concurrency
#Consider a comparsion woth Passenger before going live. It's 5.0 seems good
gem 'puma'

# Deploy with Capistrano
group :development do
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
