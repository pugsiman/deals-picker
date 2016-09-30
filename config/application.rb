require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "active_model/railtie"
require "action_mailer/railtie"


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DealsPicker
  class Application < Rails::Application
    config.app_generators.scaffold_controller :responders_controller
    config.api_only = true
  end
end
