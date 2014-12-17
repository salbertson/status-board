require 'open-uri'

class Mixpanel < Service
  def name
    'Mixpanel'
  end

  def url
    'https://status.mixpanel.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('#status').text.include?('All services are online.') == false
  end
end
