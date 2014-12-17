require 'open-uri'

class Aweber < Service
  def name
    'Aweber'
  end

  def url
    'http://status.aweber.com'
  end
end
