require 'open-uri'

class StatusPage < Service
  def name
    'Keen IO'
  end

  def url
    'http://metastatuspage.com'
  end
end
