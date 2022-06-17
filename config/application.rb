require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PersonalBlog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.exceptions_app = self.routes

    config.time_zone = "Hanoi"
    config.i18n.load_path += Dir[Rails.root.join("config","locales", "**", "*.{rb,yml}").to_s]
    # config.i18n.default_locale = :vi
    config.assets.paths << Rails.root.join("app", "assets", "images")
    # config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
    # config.active_storage.variant_processor = :mini_magick
    # config.active_job.queue_adapter = :sidekiq
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
