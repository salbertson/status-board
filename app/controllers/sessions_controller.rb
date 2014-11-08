class SessionsController < ApplicationController
  def create
    user = User.find_by(github_id: github_id)

    unless user
      user = User.create(
        github_id: github_id,
        email_address: github_email_address
      )
    end

    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def github_email_address
    request.env["omniauth.auth"]["info"]["email"]
  end

  def github_id
    request.env["omniauth.auth"]["uid"]
  end
end
