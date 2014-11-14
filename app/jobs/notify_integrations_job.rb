class NotifyIntegrationsJob
  def initialize(service_id)
    @service_id = service_id
  end

  def perform
    subscriptions = Subscription.find_by_service_id(@service_id)

    subscriptions.find_each do |subscription|
      subscription.integrations.find_each do |integration|
        Delayed::Job.enqueue IntegrationJob.new(
          subscription.service_id,
          integration.id
        )
      end
    end
  end
end
