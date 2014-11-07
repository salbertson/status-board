require 'open-uri'

class MemcachedCloud
  URL = 'https://status.redislabs.com'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
