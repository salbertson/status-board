class StatusCheckJob
  def initialize(service_name)
    @service_name = service_name.to_s
  end

  def perform
    service = @service_name.classify.constantize

    # unless service.up?
    if service.up?
      NotificationMailer.delay.notification(@service_name)
    end
  end
end
