class IntegrationJob
  def initialize(service_id, integration_id)
    @service_id = service_id
    @integration_id = integration_id
  end

  def perform
    # dup
    service = @service_id.to_s.titleize.gsub(/\s+/, "").constantize.new
    integration = Integration.find(@integration_id)
    unless integration.notify(service)
      raise 'Integration was not notified'
    end
  end
end
