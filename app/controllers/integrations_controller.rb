class IntegrationsController < ApplicationController
  before_action :authenticate

  def create
    integration = current_user.integrations.new(integration_params)

    if integration.save
      render json: integration
    else
      head 422
    end
  end

  def update
    integration = current_user.integrations.find(params[:id])
    integration.settings = integration_params[:settings]

    if integration.save
      head 200
    else
      head 422
    end
  end

  def destroy
    integration = current_user.integrations.find(params[:id])

    if integration.destroy
      head 200
    else
      head 422
    end
  end

  private

  def integration_params
    params.require(:integration).permit(:integration_id).tap do |whitelist|
      whitelist[:settings] = params[:integration][:settings]
    end
  end
end
