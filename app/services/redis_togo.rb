require 'open-uri'

class RedisTogo
  URL = 'http://status.redistogo.com'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('.page-status').text.include?("All Systems Operational") == false
  end
end
