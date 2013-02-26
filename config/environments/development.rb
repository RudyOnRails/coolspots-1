CoolSpots::Application.configure do
  config.cache_classes = false
  
  config.whiny_nils = false
  config.perform_caching = true
  config.consider_all_requests_local       = true
  #config.action_controller.perform_caching = true

  config.action_mailer.raise_delivery_errors = false

  config.log_level = :debug

  config.active_support.deprecation = :log

  config.action_dispatch.best_standards_support = :builtin

  config.active_record.mass_assignment_sanitizer = :strict
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  config.assets.compress = false
  config.assets.debug = true
  
end
