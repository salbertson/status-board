require 'open-uri'

class MemcachedCloud < Service
  def name
    'Memcached Cloud'
  end

  def url
    'https://status.redislabs.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end
end
