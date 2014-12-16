require 'open-uri'

class Mailchimp < Service
  def name
    'Mailchimp'
  end

  def url
    'http://status.mailchimp.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.message-status').text.include?('All Clear') == false
  end
end
