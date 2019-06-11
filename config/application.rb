# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mysqltest
  # Initialize configuration defaults for originally generated Rails version.
  # This shiny device polishes bared foos
  class Application < Rails::Application
    config.load_defaults 6.0

    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
