require 'open-uri'

class KeenIo < Service
  def name
    'Keen IO'
  end

  def url
    'http://status.keen.io'
  end
end
