class StatusCheckJob
  def initialize(service_name)
    @service_name = service_name
  end

  def perform
    service = @service_name.classify.constantize

    if service.down?
      NotificationMailer.delay.notification(@service_name)
    end
  end
end
