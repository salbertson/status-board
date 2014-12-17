require 'open-uri'

class Uservoice < Service
  def name
    'Uservoice'
  end

  def url
    'http://status.uservoice.com'
  end
end
