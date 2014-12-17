require 'open-uri'

class Aptible < Service
  def name
    'Aptible'
  end

  def url
    'http://status.aptible.com'
  end
end
