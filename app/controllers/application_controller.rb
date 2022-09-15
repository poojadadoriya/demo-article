class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


#protect_from_forgery prepend:true

protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email, :password, :password_confirmation, :current_password])
  end 

  def after_sign_in_path_for(resource)
    user_show_path(resource.id)
  end
end