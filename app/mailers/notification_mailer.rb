class NotificationMailer < ActionMailer::Base
  default from: "billybob@example.com"

  def notification(service)
    @service_name = service.to_s.titleize

    mail(
      to: "hello@scottalbertson.com",
      subject: "#{@service_name} went down!"
    )
  end
end
