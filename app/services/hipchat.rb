require 'open-uri'

class Hipchat < Service
  def name
    'HipChat'
  end

  def url
    'https://status.hipchat.com'
  end
end
