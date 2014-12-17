require 'open-uri'

class Dnsimple < Service
  def name
    'DNSimple'
  end

  def url
    'http://dnsimplestatus.com'
  end
end
