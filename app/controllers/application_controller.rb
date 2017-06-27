class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.reward == nil
      users_url
    else
      user_url(current_user)
    end
  end
end
