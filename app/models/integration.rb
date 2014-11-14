class Integration < ActiveRecord::Base
  def notify(service)
    # dup
    integration = integration_id.to_s.titleize.gsub(/\s+/, "").constantize.new(
      settings
    )

    integration.notify(service)
  end
end
