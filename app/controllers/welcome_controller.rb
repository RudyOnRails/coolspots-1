class WelcomeController < ApplicationController
  def index
    @guide = Guide.random
  end
end
