class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_admin
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end
end
