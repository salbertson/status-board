require 'open-uri'

class Memcachier < Service
  def name
    'Memcachier'
  end

  def url
    'http://status.memcachier.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.lead').text != 'All systems go!'
  end
end
