require 'open-uri'

class ServerDensity < Service
  def name
    'Server Density'
  end

  def url
    'http://status.serverdensity.com'
  end
end
