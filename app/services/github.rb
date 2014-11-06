require 'open-uri'

class Github
  def self.down?
    document = Nokogiri::HTML(open('https://status.github.com'))
    document.css('#message').text == 'All systems operational'
  end
end
