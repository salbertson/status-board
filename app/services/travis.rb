require 'open-uri'

class Travis < Service
  def name
    'Travis CI'
  end

  def url
    'http://status.travis-ci.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
