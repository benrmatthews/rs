require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'sendgrid-ruby'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ReachScout
  class Application < Rails::Application
     
    # uncomment to ensure a common layout for devise forms
    #   config.to_prepare do   # Devise
    #     Devise::SessionsController.layout "sign"
    #     Devise::RegistrationsController.layout "sign"
    #     Devise::ConfirmationsController.layout "sign"
    #     Devise::PasswordsController.layout "sign"
    #   end   # Devise

          #  For faster asset precompiles, you can partially load your application. 
      #  In that case, templates cannot see application objects or methods. 
      #  Heroku requires this to be false.
      config.assets.initialize_on_precompile = false

     
    # uncomment to ensure a common layout for devise forms
    config.to_prepare do   # Devise
    Devise::SessionsController.layout "sign"
    Devise::RegistrationsController.layout "sign"
    Devise::ConfirmationsController.layout "sign"
    Devise::PasswordsController.layout "sign"
    end   # Devise

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Pacific Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
     
  end
end
