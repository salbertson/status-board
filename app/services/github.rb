require 'open-uri'

class Github
  URL = 'https://status.github.com'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('#message').text == 'All systems operational'
  end
end
