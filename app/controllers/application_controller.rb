class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_filter :profiler
  
  def profiler
    Rack::MiniProfiler.authorize_request
  end
  
end
