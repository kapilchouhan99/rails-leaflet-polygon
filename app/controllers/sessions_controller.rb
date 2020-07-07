class SessionsController < Devise::SessionsController 
  # layout 'devise_layout'
  skip_before_action :verify_authenticity_token
  def new
    super
  end
   
end
