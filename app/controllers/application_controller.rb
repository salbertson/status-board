class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def index
    @services = Services.all

    if current_user
      @subscriptions = current_user.subscriptions
    end
  end

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
