require 'open-uri'

class Olark < Service
  def name
    'Olark'
  end

  def url
    'http://status.olark.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('#status').text.include?('All systems go') == false
  end
end
