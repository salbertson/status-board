require 'open-uri'

class Fastly < Service
  def name
    'Fastly'
  end

  def url
    'http://status.fastly.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
