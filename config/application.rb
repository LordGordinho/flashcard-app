require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FlashcardsApp
  class Application < Rails::Application
    config.load_defaults 7.0

    if ['development', 'test'].include? ENV['RAILS_ENV']
      Dotenv::Railtie.load
    end
    
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.generators.system_tests = nil

    config.eager_load_paths << Rails.root.join('app/components')
    config.importmap.cache_sweepers << Rails.root.join('app')
    config.assets.paths << Rails.root.join('app')
    config.view_component.view_component_path = 'app/components'
  end
end
