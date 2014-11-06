require 'open-uri'

class Memcachier
  def self.down?
    document = Nokogiri::HTML(open('http://status.memcachier.com'))
    document.css('.lead').text == 'All systems go!'
  end
end
