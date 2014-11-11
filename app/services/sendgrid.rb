require 'open-uri'

class Sendgrid
  URL = 'http://status.loader.io'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
