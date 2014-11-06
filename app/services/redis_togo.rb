require 'open-uri'

class RedisTogo
  URL = 'http://status.redistogo.com'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('.status').text == 'All Systems Operational'
  end
end
