class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(email_address: github_email_address)
    session[:email_address] = user.email_address
    redirect_to root_path
  end

  def destroy
    session[:email_address] = nil
    redirect_to root_path
  end

  private

  def github_email_address
    request.env["omniauth.auth"]["info"]["email"]
  end
end
