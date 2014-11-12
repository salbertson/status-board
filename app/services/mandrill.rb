require 'open-uri'

class Mandrill < Service
  def name
    'Mandrill'
  end

  def url
    'http://status.mandrillapp.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.status-title').first.text.include?('No issues') == false
  end
end
