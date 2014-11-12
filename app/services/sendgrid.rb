require 'open-uri'

class Sendgrid < Service
  def name
    'SendGrid'
  end

  def url
    'http://status.loader.io'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
