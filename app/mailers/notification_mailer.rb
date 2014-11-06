class NotificationMailer < ActionMailer::Base
  default from: "billybob@example.com"

  def notification(service_name)
    @service_url = service_name.classify.constantize::URL

    mail(
      to: "hello@scottalbertson.com",
      subject: "#{service_name.titleize} went down!"
    )
  end
end
