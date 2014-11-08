class SubscriptionsController < ApplicationController
  before_action :require_current_user

  def create
    subscription = current_user.subscriptions.new(subscription_params)

    if subscription.save
      head 201
    else
      head 422
    end
  end

  private

  def require_current_user
    current_user != nil
  end

  def subscription_params
    params.require('subscription').permit('name')
  end
end
