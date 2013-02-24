require 'carrierwave'

CarrierWave.configure do |config|
  if Rails.env.production?
  
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.storage = :fog
  
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
      :aws_secret_access_key  => ENV['AWS_SECRET_KEY']
    }

    config.fog_directory  = 'coolspots-uploads'                             # required
    config.fog_public     = false                                 # optional, defaults to true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  else
    config.storage = :file
  end
end
