# encoding: utf-8

class SpotUploader < CarrierWave::Uploader::Base

  include Sprockets::Helpers::RailsHelper


  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "/assets/default_spot.jpg"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
