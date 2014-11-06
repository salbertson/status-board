require 'open-uri'

class RedisTogo
  def self.down?
    document = Nokogiri::HTML(open('http://status.redistogo.com'))
    document.css('.status').text == 'All Systems Operational'
  end
end
