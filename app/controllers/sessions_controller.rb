class SessionsController < ApplicationController
  def destroy
    logout
    redirect_to root_path
  end
  
  def login_links
    
  end
end
