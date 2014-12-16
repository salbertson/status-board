require 'open-uri'

class Podio < Service
  def name
    'Podio'
  end

  def url
    'http://status.podio.com'
  end
end
