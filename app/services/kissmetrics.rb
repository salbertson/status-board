require 'open-uri'

class Kissmetrics < Service
  def name
    'KISSmetrics'
  end

  def url
    'https://kmstatus.com'
  end
end
