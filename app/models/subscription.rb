class Subscription < ActiveRecord::Base
  belongs_to :user

  def self.find_by_service_id(service_id)
    includes(:user).where(service_id: service_id)
  end
end
