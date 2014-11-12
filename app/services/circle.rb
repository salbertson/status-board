require 'open-uri'

class Circle < Service
  def name
    'Circle CI'
  end

  def url
    'http://status.circleci.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
