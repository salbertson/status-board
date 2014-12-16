require 'open-uri'

class RedisTogo < Service
  def name
    'RedisTogo'
  end

  def url
    'http://status.redistogo.com'
  end
end
