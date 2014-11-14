class Integration < ActiveRecord::Base
  def self.find_slack
    find_by(integration_id: 'slack')
  end

  def self.new_slack
    new(integration_id: 'slack')
  end

  def notify(service)
    # dup
    integration = integration_id.to_s.titleize.gsub(/\s+/, "").constantize.new(
      settings
    )

    integration.notify(service)
  end
end
