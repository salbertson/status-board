require 'open-uri'

class Memcachier
  URL = 'http://status.memcachier.com'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('.lead').text != 'All systems go!'
  end
end
