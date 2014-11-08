class SubscriptionsController < ApplicationController
  before_action :authenticate

  def create
    subscription = current_user.subscriptions.new(subscription_params)

    if subscription.save
      head 201
    else
      head 422
    end
  end

  def destroy
    subscription = current_user.subscriptions.find_by(
      name: params[:name]
    )

    if subscription.destroy
      head 200
    else
      head 422
    end
  end

  private

  def subscription_params
    params.require('subscription').permit('name')
  end
end
