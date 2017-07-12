class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    home_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:admin, :new_hire_email])
  end
end
