class Subscription < ActiveRecord::Base
  belongs_to :user

  def self.find_by_service_id(service_id)
    includes(:user).where(service_id: service_id)
  end

  def integrations
    user.integrations
  end

  def email_address
    user.email_address
  end
end
