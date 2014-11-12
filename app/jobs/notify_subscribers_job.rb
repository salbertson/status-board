class NotifySubscribersJob
  def initialize(service_id)
    @service_id = service_id
  end

  def perform
    subscriptions = Subscription.find_by_service_id(@service_id)
    
    subscriptions.find_each do |subscription|
      NotificationMailer.delay.notification(
        @service_id,
        subscription.user.email_address
      )
    end
  end
end
