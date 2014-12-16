require 'open-uri'

class Librato < Service
  def name
    'Librato'
  end

  def url
    'http://status.librato.com'
  end
end
