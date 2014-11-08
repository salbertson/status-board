class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def index
    @services = Services.all

    # get rid with #signed_in? maybe or Guest object?
    if current_user
      @subscriptions = current_user.subscriptions
    end
  end

  private

  def current_user
    @current_user ||= User.find_by(email_address: session[:email_address])
  end
end
