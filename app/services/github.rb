require 'open-uri'

class Github < Service
  def name
    'GitHub'
  end

  def url
    'https://status.github.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('#message').text.include?("All systems operational") == false
  end
end
