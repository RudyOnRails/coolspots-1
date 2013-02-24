require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups(assets: %w(development test)))

module CoolSpots
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.initialize_on_precompile = false
    config.assets.version = '1.0'
  end
end
