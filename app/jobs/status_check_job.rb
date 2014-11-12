class StatusCheckJob
  def initialize(service_id)
    @service_id = service_id
  end

  def perform
    service = Services.find(@service_id)

    if service.down?
      Delayed::Job.enqueue NotifySubscribersJob.new(@service_id)
    end
  end
end
