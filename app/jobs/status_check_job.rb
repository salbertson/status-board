class StatusCheckJob
  def initialize(service_id)
    @service_id = service_id
  end

  def perform
    service = Services.find(@service_id)

    if recent_outages.empty? && service.down?
      Outage.create!(service_id: service.id)
      Delayed::Job.enqueue NotifySubscribersJob.new(service.id)
      Delayed::Job.enqueue NotifyIntegrationsJob.new(service.id)
    end
  end

  private

  def recent_outages
    Outage.where(service_id: @service_id).where('created_at > ?', 1.hour.ago)
  end
end
