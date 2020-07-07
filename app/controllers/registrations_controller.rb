class RegistrationsController < Devise::RegistrationsController
  # layout 'devise_layout'

  def new
    super
  end

  def create
    super
  end

  protected
  
  def after_update_path_for resource
    root_url
  end

  def after_sign_up_path_for resource
    root_path
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me, :created_at, :updated_at)
  end

end
