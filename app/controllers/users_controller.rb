class UsersController < ApplicationController
  before_action :authenticate

  def update
    if current_user.update(user_params)
      head 200
    else
      head 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email_address)
  end
end
