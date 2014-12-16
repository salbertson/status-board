require 'open-uri'

class Docker < Service
  def name
    'Docker'
  end

  def url
    'https://status.docker.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('#statusbar_text').text.include?('All Systems Operational') == false
  end
end
