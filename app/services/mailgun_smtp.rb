require 'open-uri'

class MailgunSmtp
  URL = 'http://status.mailgun.net/564582'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('#summary .up').empty?
  end
end
