require 'open-uri'

class UrbanAirship < Service
  def name
    'Urban Airship'
  end

  def url
    'http://status.urbanairship.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
