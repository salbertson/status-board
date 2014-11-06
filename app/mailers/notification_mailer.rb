class NotificationMailer < ActionMailer::Base
  default from: "billybob@example.com"

  def notification(service)
    @service_name = service_name(service)

    mail(
      to: "hello@scottalbertson.com",
      subject: "#{@service_name} went down!"
    )
  end

  private

  def service_title(service)
    service.to_s.titleize
  end
end
