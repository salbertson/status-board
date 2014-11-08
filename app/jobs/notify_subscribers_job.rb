class NotifySubscribersJob
  def initialize(service_name)
    @service_name = service_name
  end

  def perform
    subscriptions = Subscription.includes(:user).where(name: @service_name)
    
    subscriptions.find_each do |subscription|
      NotificationMailer.delay.notification(
        @service_name,
        subscription.user.email_address
      )
    end
  end
end
