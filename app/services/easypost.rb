require 'open-uri'

class Easypost < Service
  def name
    'Easypost'
  end

  def url
    'http://status.easypost.com'
  end
end
