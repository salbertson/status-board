require 'open-uri'

class RedisTogo < Service
  def name
    'RedisTogo'
  end

  def url
    'http://status.redistogo.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?("All Systems Operational") == false
  end
end
