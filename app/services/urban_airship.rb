require 'open-uri'

class UrbanAirship < Service
  def name
    'Urban Airship'
  end

  def url
    'http://status.urbanairship.com'
  end
end
