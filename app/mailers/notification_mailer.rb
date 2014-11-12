class NotificationMailer < ActionMailer::Base
  default from: "status@wat.com"

  def notification(service_id, email_address)
    service = Services.find(service_id)
    @service_url = service.url

    mail(
      to: email_address,
      subject: "#{service.name} went down!"
    )
  end
end
