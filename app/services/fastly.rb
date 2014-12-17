require 'open-uri'

class Fastly < Service
  def name
    'Fastly'
  end

  def url
    'http://status.fastly.com'
  end
end
