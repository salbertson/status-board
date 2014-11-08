class NotificationMailer < ActionMailer::Base
  default from: "status@wat.com"

  def notification(service_name, email_address)
    @service_url = service_name.classify.constantize::URL

    mail(
      to: email_address,
      subject: "#{service_name.titleize} went down!"
    )
  end
end
