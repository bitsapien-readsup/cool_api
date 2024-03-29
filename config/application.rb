require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cool
  class Application < Rails::Application
    config.action_mailer.default_url_options = {host: 'localhost:3000'}
    config.action_mailer.delivery_method = :mailgun
    config.action_mailer.mailgun_settings = {
        api_key: ENV['mg_api_key'],
        port: ENV['mg_port'],
        domain: ENV['mg_domain'],  
        user_name: ENV['mg_user_name'],
        password: ENV['mg_password'],
        authentication: 'plain',
        enable_starttls_auto: true
    }
    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*',
          :headers => :any,
          :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
          :methods => [:get, :post, :options, :delete, :put]
      end
    end

    config.middleware.use Rack::Session::Cookie
   
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.initialize_on_precompile = false
  end
end
