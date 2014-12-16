require 'open-uri'

class Meldium < Service
  def name
    'Meldium'
  end

  def url
    'http://status.meldium.com'
  end
end
