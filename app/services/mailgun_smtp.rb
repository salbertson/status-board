require 'open-uri'

class MailgunSmtp < Service
  def name
    'Mailgun SMTP'
  end

  def url
    'http://status.mailgun.net/564582'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('#summary .up').empty?
  end
end
