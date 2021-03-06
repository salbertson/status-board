class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  force_ssl if: :ssl_configured?

  def index
    if current_user
      @services = Services.all
      @subscriptions = current_user.subscriptions
      @slack_integration = current_user.integrations.find_slack ||
        current_user.integrations.new_slack
    end
  end

  def authenticate
    current_user.present?
  end

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def ssl_configured?
    ENV["FORCE_SSL"]
  end
end
