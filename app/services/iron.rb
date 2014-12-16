require 'open-uri'

class Iron < Service
  def name
    'IronIO'
  end

  def url
    'http://status.iron.io'
  end
end
