require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NotesApp
  class Application < Rails::Application
    # tells Rails to add /node_modules to the asset pipeline.
    # allows all node_modules to be compiled through the asset pipeline
    config.assets.paths << Rails.root.join('node_modules')
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
