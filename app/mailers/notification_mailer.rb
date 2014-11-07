class NotificationMailer < ActionMailer::Base
  default from: "billybob@example.com"

  def notification(service_name)
    @service_url = service_name.classify.constantize::URL

    mail(
      to: ENV.fetch('RECIPIENTS').split(','),
      subject: "#{service_name.titleize} went down!"
    )
  end
end
