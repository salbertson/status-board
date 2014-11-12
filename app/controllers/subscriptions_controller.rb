class SubscriptionsController < ApplicationController
  before_action :authenticate

  def create
    subscription = current_user.subscriptions.new(subscription_params)

    if subscription.save
      render json: subscription
    else
      head 422
    end
  end

  def destroy
    subscription = current_user.subscriptions.find(params[:id])

    if subscription.destroy
      head 200
    else
      head 422
    end
  end

  private

  def subscription_params
    params.require('subscription').permit('service_id')
  end
end
