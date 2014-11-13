require 'open-uri'

class Iron < Service
  def name
    'IronIO'
  end

  def url
    'http://status.iron.io'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
