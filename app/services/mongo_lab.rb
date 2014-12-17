require 'open-uri'

class MongoLab < Service
  def name
    'MongoLab'
  end

  def url
    'http://status.mongolab.com/'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('#currentEvents').text.
      include?('No known issues or planned events at this time.') == false
  end
end
